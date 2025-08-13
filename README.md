# Windows Installation Tool v7.0.10
Install Windows/Windows To Go.

> [!WARNING]
> - Due to Microsoft copyright restrictions, this batch file needs to be modifed before it can be used. You must follow Microsoft's terms of use on their code.
> - Get the necessary modifications from here https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-10/deployment/windows-to-go/deploy-windows-to-go.
> - Scroll to the first "san_policy.xml" file and copy it line by line from line 804-841.
> - Lines 829-839 copy what you have put in for 818-828 but on line 834 change `amd64` to `arm64`.
> - On every line you copy put a `^` before every `>` and `<` that is in the code you put in.
> - Put it in between the `(echo ` and `)`.
> - Remember to include all spaces!

> [!WARNING]
> - Due to Microsoft copyright restrictions, this batch file needs to be modifed before it can be used. You must follow Microsoft's terms of use on their code.
> - Get the necessary modifications from here https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-10/deployment/windows-to-go/deploy-windows-to-go.
> - Scroll to the second "san_policy.xml" file and copy it line by line from line 855-883
> - Lines 874-881 copy what you have put in for 866-873 but on line 875 change `amd64` to `arm64`.
> - On every line you copy put a `^` before every `>` and `<` that is in the code you put in.
> - Put it in between the `(echo ` and `)`.
> - Remember to include all spaces!

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
