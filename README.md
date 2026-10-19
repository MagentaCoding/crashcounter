# CrashCounter
Welcome to CrashCounter, a crash counter where you have to mannualy add your windows BSOD (for that it was originally planned to be used for but whatever) so you don't get lazy.
So, this is the README, with somethings for you:

## Setup
Go to the SETUP.md or the Setup-Tab if GitHub has one

## Security
It's a simple PowerShell script even not so well informed programmers and devs should or could understand

## Installation
See [Setup](#setup)

## Commands
Thats something I can help you with!
**The Commands:**
1. Add-Crash   
    It's optional to privide the parameters but you'll get asked from PowerShell interactivly, at least PowerShell 7 did that
    Parameters:
    1. -Software   
        Please enter the Software name, such as Discord or NVIDIA Control Panel or Skibidi Roblox Hackclient Free Robux x64 or so
    2. -Reason   
        Why it crashed
    3. -Application   
        The application that's liable for the BSOD or crash
    4. -Driver   
        The Driver that's liable for the BSOD
    5. -PowerLevel   
        The powerlevel on what the crash or BSOD happened, mostly the kernel
    6. -Points (Optional)   
        You can either give positive or negative points, please remember, it should be negative, the standard is -1
2. Show-CrashSummary   
    I'm not going to explain that one
3. Export-CrashLog   
    Exports the crashlog into a JSON and CSV
4. Clear-CrashLog   
    Creates a backup and clears the crashlog
5. Open-File   
    Opens a file, has 2 required parameters:
    1. -File   
        The path to the file, a direct path is recommended but I think the relative path is also supported
    2. -Software   
        The path to the software
6. Show-Help   
    Opens the terminal based output so you can read and understand what the commands are

Finish, questions please via GitHub Issues or via mail to [alexander.gal@fbges.de](mailto:alexander.gal@fbges.de)