# Windows Installation Tool v8.0.7
Install Windows/Windows To Go.

> [!WARNING]
> ## DUE TO MICROSOFT'S COPYRIGHT LIMITATIONS, THIS BATCH FILE NEED TO BE MODIFIED BEFORE IT CAN BE USED! YOU MUST FOLLOW MICROSOFT'S TERMS OF USE!
> ### Follow these steps in order.
> **1.** Get the necessary modifications from https://learn.microsoft.com/en-us/previous-versions/windows/it-pro/windows-10/deployment/windows-to-go/deploy-windows-to-go.  
> **2.** Scroll to the first "san_policy.xml" file and copy it line by line into lines 833-859. Put the code in between the `(echo ` and `)`. Remember to include all spaces!  
> **3.** Put a `^` before every `<` and `>` that is in the code you put in. There is a total of 26 `^` that needs to be put in. Ignore any `<` and `>` that are in the batch file but was not copied by you even if it is in the same line as the code that you put in.  
> **4.** Scroll to the second "san_policy.xml" file (Note that Microsoft calls it "san_policy.xml" on their website. It should actually be called "unattend.xml".) and copy it line by line into lines 873-893. Put the code in between the `(echo ` and `)`. Remember to include all spaces!  
> **5.** Put a `^` before every `<` and `>` that is in the code you put in. There is a total of 26 `^` that needs to be put in. Ignore any `<` and `>` that are in the batch file but was not copied by you even if it is in the same line as the code that you put in.

## Windows Compatibility
- **Windows 10 x86/x64:** Home, Home N, Home Single Language, Education, Education N, Pro and Pro N editions.
- **Windows 11 x64:** Home, Home N, Home Single Language, Education, Education N, Pro, Pro N, Pro Education, Pro Education N, Pro for Workstations and Pro for Workstations N editions.  
- **Windows 11 Arm64:** Home, Home Single Language and Pro.

## Windows Installation Types
- **Standard Windows Installation:** Supports Windows 10 x86/x64, Windows 11 x64/Arm64.
- **Windows To Go Installation:** Supports Windows 10 x86/x64, Windows 11 x64.

## BIOS Types
- **Standard Windows Installation:** Supports legacy BIOS or UEFI.
- **Windows To Go Installation:** Supports only both legacy BIOS and UEFI.

## Supported Drives
- Supports all USB drives, but a external SSD or WTG certified drive is strongly recommended.

## Notes
- 3 unused drive letters are needed for standard Windows installation.
- 2 unused drive letters are needed for Windows To Go installation.
- This batch file may clear your auto-mount points.
- Supports Windows Disk Image/Windows installation media with ESD, SWM and WIM images.
