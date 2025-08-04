# Windows Installation Tool v7.0.8
Install Windows/Windows To Go.

## Standard Windows Installation
- **x86/x64** Supports legacy BIOS, UEFI and both legacy BIOS and UEFI.
- **Arm64** Supports UEFI only.
- Has Windows Recovery Environment.
- Volume labels are Windows and System and Recovery.

## Windows To Go Installation
- Only supports both legacy BIOS and UEFI.
- No Windows Recovery Environment.
- Volume labels are WTG-Windows and WTG-System.
- Has SAN policy to disable internal PC drives.
- Has `"unattended.xml"` file that uninstalls Windows Recovery Environment.

## Supported Drives
- Supports all USB drives, but a external SSD or WTG certified drive is strongly recommended.

## Windows Compatibility
- **Windows 10 x86/x64** Home, Home N, Home Single Language, Education, Education N, Pro and Pro N editions.
- **Windows 11 x64** Home, Home N, Home Single Language, Education, Education N, Pro, Pro N, Pro Education, Pro Education N, Pro for Workstations and Pro for Workstations N editions.  
- **Windows 11 Arm64** Home, Home Single Language and Pro.

## Notes
- 3 unused drive letters are needed for standard Windows installation.
- 2 unused drive letters are needed for Windows To Go installation.
- This batch file may clear your AutoMount points.
- On some versions of Windows 10 22H2, do to a `"%windir%\System32\ReAgentc.exe"` bug, the recovery partition files creation will fail.
