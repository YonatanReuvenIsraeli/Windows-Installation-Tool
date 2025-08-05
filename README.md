# Windows Installation Tool v7.0.10
Install Windows/Windows To Go.

## Supported Drives
- Supports all USB drives, but a external SSD or WTG certified drive is strongly recommended.

## Windows Compatibility
- **Windows 10 x86/x64** Home, Home N, Home Single Language, Education, Education N, Pro and Pro N editions.
- **Windows 11 x64** Home, Home N, Home Single Language, Education, Education N, Pro, Pro N, Pro Education, Pro Education N, Pro for Workstations and Pro for Workstations N editions.  
- **Windows 11 Arm64** Home, Home Single Language and Pro.

## Notes
- 3 unused drive letters are needed for standard Windows installation.
- This batch file may clear your AutoMount points.
- On some versions of Windows 10 22H2, do to a `"%windir%\System32\ReAgentc.exe"` bug, the recovery partition files creation will fail.
