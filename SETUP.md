# Setup
How to set up or rather install the CrashCounter:
1. [Via GitHub Installer-PS1](#1-via-github-installer-ps1)
2. [Via Direct Installer-PS1]
3. [Via Copypaste Installer-PS1]

## 1. Via GitHub Installer-PS1
You're selected: Your mother
Setup steps:
1. Go the the release page
2. Download the Installer.ps1
3. Open Terminal via Windows Key and then type Terminal, if it isn't installed press Win + X and select Microsoft PowerShell (select "Microsoft PowerShell (Administrator)" ONLY if you're sure you want to install it to/in the entire system for every user)
4. Execute this command: ```cd Downloads```   
    4.1 If you're not in your downloads folder because you started somewhere else for example in C:\Windows\System32 then execute ```cd $env:USERPROFILE\Downloads```
5. Then execute .\Installer.ps1   
    5.1 When PowerShell says to you that executing not knows scripts isn't allowed for security reasons then execute ```Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser``` (**WARNING: THIS DISABLES YOUR EXECUTION POLICY FOR THE POWERSHELL SESSION YOU'RE CURRENTLY IN**) or execute ```Unblock-File -Path ".\Installer.ps1"```
6. Select installation language
7. Follow installation instructions
8. Wait for installation to finish
9. If the installation finished execute ```Show-Help``` to view the commands

## 2. Via Direct Installer-PS1
1. Head over to [crashcounter.magentaweb.de](https://crashcounter.magentaweb.de)
2. Click on "Installer.ps1"
3. Press STRG + S
4. Open Terminal via Windows Key and then type Terminal, if it isn't installed press Win + X and select Microsoft PowerShell (select "Microsoft PowerShell (Administrator)" ONLY if you're sure you want to install it to/in the entire system for every user)
5. Execute this command: ```cd Downloads```   
    5.1 If you're not in your downloads folder because you started somewhere else for example in C:\Windows\System32 then execute ```cd $env:USERPROFILE\Downloads```
6. Then execute .\Installer.ps1   
    6.1 When PowerShell says to you that executing not knows scripts isn't allowed for security reasons then execute ```Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser``` (**WARNING: THIS DISABLES YOUR EXECUTION POLICY FOR THE POWERSHELL SESSION YOU'RE CURRENTLY IN**) or execute ```Unblock-File -Path ".\Installer.ps1"```
7. Select installation language
8. Follow installation instructions
9. Wait for installation to finish
10. If the installation finished execute ```Show-Help``` to view the commands

## 3. Via Copypaste Installer-PS1
1. Head over to [crashcounter.magentaweb.de](https://crashcounter.magentaweb.de)
2. Click on "Installer.ps1"
3. Press STRG + A
4. Press STRG + C
5. Open Explorer (to open Explorer search it, press the Explorer Icon on the Taskbar or Press Win + E)
6. Creae a new file where you like
7. Name it how you want but is has to end on .ps1   
    7.1 If you're not seeing any file extensions (like .txt, .exe and so on) press on the "Display"-Tab and then check the box "File name extension" (or similar)
8. Open Terminal via Windows Key and then type Terminal, if it isn't installed press Win + X and select Microsoft PowerShell (select "Microsoft PowerShell (Administrator)" ONLY if you're sure you want to install it to/in the entire system for every user)
9. Execute this command: ```cd Downloads```   
    9.1 If you're not in your downloads folder because you started somewhere else for example in C:\Windows\System32 then execute ```cd $env:USERPROFILE\Downloads```
10. Then execute .\Installer.ps1   
    10.1 When PowerShell says to you that executing not knows scripts isn't allowed for security reasons then execute ```Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser``` (**WARNING: THIS DISABLES YOUR EXECUTION POLICY FOR THE POWERSHELL SESSION YOU'RE CURRENTLY IN**) or execute ```Unblock-File -Path ".\Installer.ps1"```
11. Select installation language
12. Follow installation instructions
13. Wait for installation to finish
14. If the installation finished execute ```Show-Help``` to view the commands