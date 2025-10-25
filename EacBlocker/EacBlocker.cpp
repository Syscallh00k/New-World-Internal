// EacBlocker.cpp : This file contains the 'main' function. Program execution begins and ends there.
//

#include <iostream>
#include <fstream>
#include <string>
#include <Windows.h>
void FixEacConfig()
{
    std::ofstream file("D:\\SteamLibrary\\steamapps\\common\\New World\\EasyAntiCheat\\Settings.json");

    if (file.is_open())
    {
        file << "{\n";
        file << "    \"title\"                                         : \"New World\",\n";
        file << "    \"executable\"                                    : \"Bin64/NewWorld.exe\",\n";
        file << "    \"productid\"                                     : \"b0855340e2ed491096135339f6fc94b7\",\n";
        file << "    \"sandboxid\"                                     : \"c9882365293e4c2e858eee62c4b181b5\",\n";
        file << "    \"deploymentid\"                                  : \"29e9a08ed0974685b64a6d52b74570a2\",\n";
        file << "    \"requested_splash\"                              : \"EasyAntiCheat/SplashScreen.png\",\n";
        file << "    \"wait_for_game_process_exit\"                    : \"false\",\n";
        file << "    \"hide_bootstrapper\"                             : \"false\",\n";
        file << "    \"hide_gui\"                                      : \"false\"\n";
        file << "}\n";

        file.close();
    }
}


void BreakEacConfig()
{
    std::ofstream file("D:\\SteamLibrary\\steamapps\\common\\New World\\EasyAntiCheat\\Settings.json");

    if (file.is_open())
    {
        file << "{\n";
        file << "    \"title\"                                         : \"New World\",\n";
        file << "    \"executable\"                                    : \"Bin64/NewWorld.exe\",\n";
        file << "    \"productid\"                                     : \"b0855340e2ed491096135339f6fc94b7\",\n";
        file << "    \"sandboxid\"                                     : \"a9882365293e4c2e858eee62c4b181b5\",\n";
        file << "    \"deploymentid\"                                  : \"19e9a08ed0974685b64a6d52b74570a2\",\n";
        file << "    \"requested_splash\"                              : \"EasyAntiCheat/SplashScreen.png\",\n";
        file << "    \"wait_for_game_process_exit\"                    : \"false\",\n";
        file << "    \"hide_bootstrapper\"                             : \"false\",\n";
        file << "    \"hide_gui\"                                      : \"false\"\n";
        file << "}\n";

        file.close();
    }
}
int main()
{
    std::cout << "[Up] Fix Eac Config\n[Down] Break Eac Config\n";


    while (true) {
       
        if (GetAsyncKeyState(VK_UP) & 0x1)
            FixEacConfig();
        else if (GetAsyncKeyState(VK_DOWN) & 0x1)
            BreakEacConfig();
    }
}
