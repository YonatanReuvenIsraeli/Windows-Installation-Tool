# Windows Installation Tool v5.3.1
Install Windows onto an external drive.

## Windows Install Types
- Standard Windows installation.
- Windows To Go installation.
## Supported Drives
- Supports all USB drives, but a external SSD or WTG certified drive is strongly recommended.

## Windows Compatibility
- **Windows 10 x86/x64** Home, Home N, Home Single Language, Education, Education N, Pro and Pro N editions.
- **Windows 11 x64** Home, Home N, Home Single Language, Education, Education N, Pro, Pro N, Pro Education, Pro Education N, Pro for Workstations and Pro for Workstations N editions.  
- **Windows 11 Arm64** Home, Home Single Language and Pro.

## BIOS Compatibility
- x86/x64 Windows installations have the option to support Legacy BIOS, UEFI or both.
- Arm64 Windows installations support UEFI only.

## Notes
- 3 unused drive letters are needed for standard Windows installation.
- 2 unused drive letters are needed for Windows To Go installation.
- On some versions of Windows 10 22H2, do to a "%windir%\System32\ReAgentc.exe" bug, the recovery partition files creation will fail.
