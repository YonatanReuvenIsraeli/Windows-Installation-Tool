# Windows Installation Tool v7.0.16
Install Windows/Windows To Go.

> [!WARNING]
> ## DUE TO MICROSOFT'S COPYRIGHT LIMITATIONS, THIS BATCH FILE NEED TO BE MODIFIED BEFORE IT CAN BE USED! YOU MUST FOLLOW MICROSOFT'S TERMS OF USE!
> ### Follow these steps in order.
> **1.** Get the necessary modifications from https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-10/deployment/windows-to-go/deploy-windows-to-go.  
> **2.** Scroll to the first "san_policy.xml" file and copy it line by line into lines 804-841 but skip lines 829-839. Put the code in between the `(echo ` and `)`. Remember to include all spaces!  
> **3.** In lines 829-839 copy what you have put in for 818-828 but on line 834 change `amd64` to `arm64`.  
> **4.** Put a `^` before every `<` and `>` that is in the code you put in. There is a total of 34 `^` that needs to be put in. Ignore any `<` and `>` that are in the batch file but was not copied by you even if it is in the same line as the code that you put in.  
> **5.** Scroll to the second "san_policy.xml" file (Note that Microsoft calls it "san_policy.xml" on their website. It should actually be called "unattend.xml".) and copy it line by line into lines 855-883 but skip lines 874-881. Put the code in between the `(echo ` and `)`. Remember to include all spaces!  
> **6.** In lines 874-881 copy what you have put in for 866-873 but on line 875 change `amd64` to `arm64`.  
> **7.** Put a `^` before every `<` and `>` that is in the code you put in. There is a total of 34 `^` that needs to be put in. Ignore any `<` and `>` that are in the batch file but was not copied by you even if it is in the same line as the code that you put in.

## Supported Drives
- Supports all USB drives, but a external SSD or WTG certified drive is strongly recommended.

## Windows Compatibility
- **Windows 10 x86/x64** Home, Home N, Home Single Language, Education, Education N, Pro and Pro N editions.
- **Windows 11 x64** Home, Home N, Home Single Language, Education, Education N, Pro, Pro N, Pro Education, Pro Education N, Pro for Workstations and Pro for Workstations N editions.  
- **Windows 11 Arm64** Home, Home Single Language and Pro.

## Notes
- 3 unused drive letters are needed for standard Windows installation.
- 2 unused drive letters are needed for Windows To Go installation.
- This batch file may clear your auto-mount points.
- On some versions of Windows 10 22H2, do to a `"%windir%\System32\ReAgentc.exe"` bug, the recovery partition files creation will fail.
