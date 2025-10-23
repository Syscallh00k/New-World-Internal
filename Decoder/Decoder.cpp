#include <iostream>
#include <fstream>
#include <filesystem>
#include <string>
#include <cstdlib>
#include <map>
#include <set>
#include <sstream>
#include <algorithm>
#include <vector>
#include <regex>

namespace fs = std::filesystem;

// Structure to hold class information
struct ClassInfo {
    std::string name;
    std::string parent;
    std::set<std::string> members;
    std::set<std::string> pointers;
};

// Split string by delimiter
std::vector<std::string> split(const std::string& s, char delimiter) {
    std::vector<std::string> tokens;
    std::string token;
    std::istringstream tokenStream(s);
    while (std::getline(tokenStream, token, delimiter)) {
        if (!token.empty()) {
            tokens.push_back(token);
        }
    }
    return tokens;
}

// Extract all strings from a file
std::vector<std::string> extract_strings(const std::string& filepath) {
    std::vector<std::string> strings;
    std::ifstream file(filepath);
    if (!file.is_open()) return strings;

    std::string line;
    // Regex patterns for different string formats
    std::regex quoted_string(R"(["']([^"']+)["'])");
    std::regex data_node(R"(\b([A-Z][a-zA-Z0-9]*(?:\.[A-Z][a-zA-Z0-9]*)+)\b)");

    while (std::getline(file, line)) {
        // Extract quoted strings
        std::smatch match;
        std::string::const_iterator searchStart(line.cbegin());
        while (std::regex_search(searchStart, line.cend(), match, quoted_string)) {
            strings.push_back(match[1].str());
            searchStart = match.suffix().first;
        }

        // Extract data node patterns
        searchStart = line.cbegin();
        while (std::regex_search(searchStart, line.cend(), match, data_node)) {
            strings.push_back(match[1].str());
            searchStart = match.suffix().first;
        }
    }

    return strings;
}

// Categorize strings
void categorize_strings(const std::vector<std::string>& strings,
    std::set<std::string>& images,
    std::set<std::string>& data_nodes,
    std::set<std::string>& other) {
    for (const auto& str : strings) {
        if (str.find(".png") != std::string::npos ||
            str.find(".jpg") != std::string::npos ||
            str.find(".dds") != std::string::npos ||
            str.find(".tga") != std::string::npos) {
            images.insert(str);
        }
        else if (str.find('.') != std::string::npos &&
            std::isupper(str[0]) &&
            str.find("LyShineUI") == std::string::npos) {
            // Likely a data node (has dots, starts with capital, not a path)
            data_nodes.insert(str);
        }
        else {
            other.insert(str);
        }
    }
}

// Build class hierarchy from data nodes
std::map<std::string, ClassInfo> build_class_hierarchy(const std::set<std::string>& data_nodes) {
    std::map<std::string, ClassInfo> classes;

    for (const auto& node : data_nodes) {
        std::vector<std::string> parts = split(node, '.');
        if (parts.size() < 2) continue;

        // Build the class hierarchy from the path
        for (size_t i = 0; i < parts.size() - 1; ++i) {
            std::string current_class = parts[i];
            std::string parent_class = (i > 0) ? parts[i - 1] : "";

            // Initialize class if not exists
            if (classes.find(current_class) == classes.end()) {
                ClassInfo info;
                info.name = current_class;
                info.parent = parent_class;
                classes[current_class] = info;
            }

            // If there's a next part
            if (i < parts.size() - 1) {
                std::string next_part = parts[i + 1];

                // If next part is the last part (a member)
                if (i == parts.size() - 2) {
                    classes[current_class].members.insert(next_part);
                }
                // If next part is another class (a pointer)
                else {
                    classes[current_class].pointers.insert(next_part);
                }
            }
        }
    }

    return classes;
}

// Write class hierarchy to file
void write_class_hierarchy(const std::map<std::string, ClassInfo>& classes,
    const std::string& output_path) {
    std::ofstream out(output_path);
    if (!out.is_open()) {
        std::cerr << "Failed to create output file: " << output_path << "\n";
        return;
    }

    out << "======================================================\n";
    out << "           CLASS HIERARCHY RECONSTRUCTION\n";
    out << "======================================================\n\n";

    // Create a sorted list of classes with proper inheritance order
    std::vector<std::pair<std::string, const ClassInfo*>> sorted_classes;
    for (const auto& pair : classes) {
        sorted_classes.push_back({ pair.first, &pair.second });
    }

    // Sort: root classes first, then by name
    std::sort(sorted_classes.begin(), sorted_classes.end(),
        [](const auto& a, const auto& b) {
            if (a.second->parent.empty() != b.second->parent.empty())
                return a.second->parent.empty();
            return a.first < b.first;
        });

    for (const auto& pair : sorted_classes) {
        const std::string& class_name = pair.first;
        const ClassInfo& info = *pair.second;

        out << "class **" << class_name << "**";

        if (!info.parent.empty()) {
            out << " : **" << info.parent << "**";
        }
        out << "\n";

        // Write pointers first
        for (const auto& ptr : info.pointers) {
            out << "  pointer: **" << ptr << "**\n";
        }

        // Write members
        for (const auto& member : info.members) {
            out << "  member: " << member << "\n";
        }

        out << "---\n\n";
    }

    out.close();
    std::cout << "Class hierarchy saved to: " << output_path << "\n";
}

// Write categorized strings to files
void write_categorized_data(const std::set<std::string>& images,
    const std::set<std::string>& data_nodes,
    const std::set<std::string>& other,
    const std::string& base_path) {
    // Write images
    std::ofstream img_file(base_path + "\\extracted_images.txt");
    img_file << "======================================================\n";
    img_file << "              EXTRACTED IMAGE PATHS\n";
    img_file << "======================================================\n\n";
    for (const auto& img : images) {
        img_file << img << "\n";
    }
    img_file.close();

    // Write data nodes
    std::ofstream nodes_file(base_path + "\\extracted_datanodes.txt");
    nodes_file << "======================================================\n";
    nodes_file << "              EXTRACTED DATA NODES\n";
    nodes_file << "======================================================\n\n";
    for (const auto& node : data_nodes) {
        nodes_file << node << "\n";
    }
    nodes_file.close();

    // Write other strings
    std::ofstream other_file(base_path + "\\extracted_strings.txt");
    other_file << "======================================================\n";
    other_file << "              OTHER EXTRACTED STRINGS\n";
    other_file << "======================================================\n\n";
    for (const auto& str : other) {
        other_file << str << "\n";
    }
    other_file.close();

    std::cout << "\nExtracted data saved:\n";
    std::cout << "  - Images: " << images.size() << " found\n";
    std::cout << "  - Data Nodes: " << data_nodes.size() << " found\n";
    std::cout << "  - Other Strings: " << other.size() << " found\n";
}

int main()
{
    std::string game_path;
    std::cout << "======================================================\n";
    std::cout << "      New World Auto Dumper with Class Rebuilder\n";
    std::cout << "======================================================\n\n";
    std::cout << "Enter Game Script Path: ";
    std::getline(std::cin, game_path);

    if (!fs::exists(game_path) || !fs::is_directory(game_path))
    {
        std::cerr << "Invalid path: " << game_path << "\n";
        return 1;
    }

    fs::path exe_path = fs::current_path();
    fs::path jar_path = exe_path / "fix.jar";

    if (!fs::exists(jar_path))
    {
        std::cerr << "Could not find fix.jar at: " << jar_path << "\n";
        return 1;
    }

    // Create output directory
    std::string output_dir = exe_path.string() + "\\DumpedData";
    fs::create_directories(output_dir);

    std::set<std::string> all_images;
    std::set<std::string> all_data_nodes;
    std::set<std::string> all_other_strings;

    int decoded_count = 0;

    // Step 1: Decode all scripts
    std::cout << "\n[STEP 1] Decoding Lua scripts...\n";
    std::cout << "------------------------------------------------------\n";

    for (const auto& entry : fs::recursive_directory_iterator(game_path))
    {
        if (!entry.is_regular_file())
            continue;

        std::string filename = entry.path().filename().string();
        if (filename == "EncodedScript.luac")
        {
            std::string file_path = entry.path().string();
            std::string decoded_path = entry.path().parent_path().string() + "\\DecodedScript.lua";

            std::string command = "java -jar \"" + jar_path.string() + "\" \"" + file_path + "\" > \"" + decoded_path + "\" 2>nul";

            std::cout << "Decoding: " << entry.path().filename() << "...\n";
            int result = system(command.c_str());
            if (result == 0) {
                decoded_count++;
            }
        }
    }

    std::cout << "\nDecoded " << decoded_count << " script(s).\n";

    // Step 2: Extract strings from all decoded files
    std::cout << "\n[STEP 2] Extracting strings from decoded scripts...\n";
    std::cout << "------------------------------------------------------\n";

    for (const auto& entry : fs::recursive_directory_iterator(game_path))
    {
        if (!entry.is_regular_file())
            continue;

        std::string filename = entry.path().filename().string();
        if (filename == "DecodedScript.lua")
        {
            std::cout << "Analyzing: " << entry.path().filename() << "...\n";
            auto strings = extract_strings(entry.path().string());

            std::set<std::string> images, data_nodes, other;
            categorize_strings(strings, images, data_nodes, other);

            all_images.insert(images.begin(), images.end());
            all_data_nodes.insert(data_nodes.begin(), data_nodes.end());
            all_other_strings.insert(other.begin(), other.end());
        }
    }

    // Step 3: Build and save class hierarchy
    std::cout << "\n[STEP 3] Building class hierarchy...\n";
    std::cout << "------------------------------------------------------\n";

    auto classes = build_class_hierarchy(all_data_nodes);
    std::cout << "Found " << classes.size() << " classes.\n";

    write_class_hierarchy(classes, output_dir + "\\class_hierarchy.txt");

    // Step 4: Save categorized data
    std::cout << "\n[STEP 4] Saving extracted data...\n";
    std::cout << "------------------------------------------------------\n";

    write_categorized_data(all_images, all_data_nodes, all_other_strings, output_dir);

    std::cout << "\n======================================================\n";
    std::cout << "              DUMP COMPLETE!\n";
    std::cout << "======================================================\n";
    std::cout << "Output directory: " << output_dir << "\n\n";

    system("pause");
    return 0;
}