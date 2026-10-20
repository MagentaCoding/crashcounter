# Changelog
## v1.0.1 – Language Update I
Adde English to the installer, womp womp
## v1.0.0 – Initial Release
I don't know why I made this, it was once a private project made for me, in the case of an BSOD form Windows, now it on GitHub, with an installer... And a module importer... Feel free to contribute or use it if you want. And I also don't know why I published this on Github... Well, anyway more information is in the README.md which is [here](https://github.com/MagentaCoding/crashcounter/blob/main/README.md) and [here](https://github.com/MagentaCoding/crashcounter/)

### Downloading Information
The CC.psd1 and CC.psm1 will be downloaded from my server (crashcounter.magentaweb.de) via the Installer.ps1, to Install it you have to run the Installer.ps1 in a PowerShell Windows, running it with administrative privilges is not recommended but required for systemwide install.
The following files are downloaded from my server:
- CC.psd1
- CC.psm1
- Based on installer language selection the language variable file (for example the DE.psd1 or EN.psd1)

### Important Information
The installer installs currently only in german, more languages following soon but I do deserve some sleep too just so you know

### Security Information
The Installer provides an integrated checksum validator (via my checksum API) for the downloaded files (for security reasons), however you should check the contents of the downloaded files before executing the first command

---

**Full Changelog**: https://github.com/MagentaCoding/crashcounter/blob/main/CHANGELOG.md