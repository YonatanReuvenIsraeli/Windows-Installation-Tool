@echo off
setlocal
title Windows Installation Tool
echo Program Name: Windows Installation Tool
echo Version: 5.1.10
echo License: GNU General Public License v3.0
echo Developer: @YonatanReuvenIsraeli
echo GitHub: https://github.com/YonatanReuvenIsraeli
echo Sponsor: https://github.com/sponsors/YonatanReuvenIsraeli
"%windir%\System32\net.exe" session > nul 2>&1
if not "%errorlevel%"=="0" goto "NotAdministrator"
goto "Start"

:"NotAdministrator"
echo.
echo Please run this batch file as an administrator. Press any key to close this batch file.
pause > nul 2>&1
goto "Close"

:"Close"
endlocal
exit

:"Start"
echo.
echo [1] Install Windows.
echo [2] Install Windows To Go.
echo.
set WindowsType=
set /p WindowsType="What do you want to do? (1-2) "
if /i "%WindowsType%"=="1" goto "SureWindowsType"
if /i "%WindowsType%"=="2" goto "SureWindowsType"
echo Invalid syntax!
goto "Start"

:"SureWindowsType"
echo.
set SureWindows=
if /i "%WindowsType%"=="1" set /p SureWindowsType="Are you sure you want to install Windows? (Yes/No) "
if /i "%WindowsType%"=="2" set /p SureWindowsType="Are you sure you want to install Windows To Go? (Yes/No) "
if /i "%SureWindowsType%"=="Yes" goto "Download"
if /i "%SureWindowsType%"=="No" goto "Start"
echo Invalid syntax!
goto "SureWindowsType"

:"Download"
echo.
echo [1] Download Windows 10 22H2 x86/x64 Windows Disk Image.
echo [2] Download Windows 11 24H2 x64 Windows Disk Image.
echo [3] Download Windows 11 24H2 Arm64 Windows Disk Image.
echo [4] Already have downloaded Windows 10 22H2 x86/x64 Windows Disk Image or Windows 11 24H2 x64/Arm64 Windows Disk Image.
echo.
set Download=
set /p Download="What do you want to do? (1-4) "
if /i "%Download%"=="1" goto "SureDownload"
if /i "%Download%"=="2" goto "SureDownload"
if /i "%Download%"=="3" goto "SureDownload"
if /i "%Download%"=="4" goto "SureDownload"
echo Invalid syntax!
goto "Download"

:"SureDownload"
echo.
set SureDownload=
if /i "%Download%"=="1" set /p SureDownload="Are you sure you want to download Windows 10 22H2 x86/x64 Windows Disk Image? (Yes/No) "
if /i "%Download%"=="2" set /p SureDownload="Are you sure you want to download Windows 11 24H2 x64 Windows Disk Image? (Yes/No) "
if /i "%Download%"=="3" set /p SureDownload="Are you sure you want to download Windows 11 24H2 Arm64 Windows Disk Image? (Yes/No) "
if /i "%Download%"=="4" set /p SureDownload="Are you sure you have downloaded Windows 10 22H2 x86/x64 Windows Disk Image or Windows 11 24H2 x64/Arm64 Windows Disk Image? (Yes/No) "
if /i "%SureDownload%"=="Yes" goto "DownloadGo"
if /i "%SureDownload%"=="No" goto "Start"
echo Invalid syntax!
goto "SureDownload"

:"DownloadGo"
if /i "%Download%"=="1" goto "10"
if /i "%Download%"=="2" goto "11x64"
if /i "%Download%"=="3" goto "11Arm64"
if /i "%Download%"=="4" goto "Mount"

:"10"
echo.
echo Download Windows 10 22H2 x86/x64 Disk Image from here. ^-^-^> https://www.microsoft.com/software-download/windows10
echo Press any key to open the website.
pause > nul 2>&1
start https://www.microsoft.com/software-download/windows10
echo.
echo Press any key to continue once you have downloaded the Windows 10 22H2 x86/x64 Disk Image.
pause > nul 2>&1
goto "Mount"

:"11x64"
echo.
echo Download Windows 11 24H2 x64 Disk Image from here. ^-^-^> https://www.microsoft.com/software-download/windows11
echo Press any key to open the website.
pause > nul 2>&1
start https://www.microsoft.com/software-download/windows11
echo.
echo Press any key to continue once you have downloaded the Windows 11 24H2 x64 Disk Image.
pause > nul 2>&1
goto "Mount"

:"11Arm64"
echo.
echo Download Windows 11 24H2 Arm64 Disk Image from here. ^-^-^> https://www.microsoft.com/software-download/windows11arm64
echo Press any key to open the website.
pause > nul 2>&1
start https://www.microsoft.com/software-download/windows11arm64
echo.
echo Press any key to continue once you have downloaded the Windows 11 24H2 Arm64 Disk Image.
pause > nul 2>&1
goto "Mount"

:"Mount"
echo.
echo Please mount your Windows Disk Image then press any key to continue.
pause > nul 2>&1
goto "DriveLetter"

:"DriveLetter"
echo.
set DriveLetter=
set /p DriveLetter="What is the drive letter of your mounted Windows Disk Image? (A:-Z:) "
if /i "%DriveLetter%"=="A:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="B:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="C:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="D:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="E:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="F:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="G:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="H:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="I:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="J:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="K:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="L:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="M:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="N:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="O:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="P:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="Q:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="R:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="S:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="T:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="U:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="V:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="W:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="X:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="Y:" goto "SureDriveLetter"
if /i "%DriveLetter%"=="Z:" goto "SureDriveLetter"
echo Invalid syntax!
goto "DriveLetter"

:"SureDriveLetter"
echo.
set SureDriveLetter=
set /p SureDriveLetter="Are you sure "%DriveLetter%" is the drive letter of your Windows Disk Image? (Yes/No) "
if /i "%SureDriveLetter%"=="Yes" goto "CheckExistDriveLetter"
if /i "%SureDriveLetter%"=="No" goto "DriveLetter"
echo Invalid syntax!
goto "SureDriveLetter"

:"CheckExistDriveLetter"
if not exist "%DriveLetter%" goto "NotExist"
goto "BitDetection"

:"NotExist"
echo "%DriveLetter%" does not exist. Please try again.
goto "DriveLetter"

:"BitDetection"
if exist "%DriveLetter%\sources" goto "ESDSWMWIM"
if exist "%DriveLetter%\x86\sources" goto "Bit1"
if exist "%DriveLetter%\x64\sources" goto "Bit1"
echo "%DriveLetter%" is not a Windows Disk Image!
goto "DriveLetter"

:"Bit1"
echo.
set Bit=
set /p Bit="Do you want 32-bit or 64-bit version of Windows? (32/64) "
if /i "%Bit%"=="32" goto "SureBit"
if /i "%Bit%"=="64" goto "SureBit"
echo Invalid syntax!
goto "Bit1"

:"SureBit"
echo.
set SureBit=
set /p SureBit="Are you sure you want a %Bit%-bit version of Windows? (Yes/No) "
if /i "%SureBit%"=="Yes" goto "Bit2"
if /i "%SureBit%"=="No" goto "Bit1"
echo Invalid syntax!
goto "SureBit"

:"Bit2"
if /i "%Bit%"=="32" goto "32ESDSWMWIM"
if /i "%Bit%"=="64" goto "64ESDSWMWIM"
goto "ESDSWMWIM"

:"ESDSWMWIM"
if exist "%DriveLetter%\sources\install.esd" set Install=install.esd
if exist "%DriveLetter%\sources\install.swm" set Install=install.swm
if exist "%DriveLetter%\sources\install.wim" set Install=install.wim
goto "IndexSet"

:"32ESDSWMWIM"
if exist "%DriveLetter%\x86\sources\install.esd" set Install=install.esd
if exist "%DriveLetter%\x86\sources\install.swm" set Install=install.swm
if exist "%DriveLetter%\x86\sources\install.wim" set Install=install.wim
goto "32DISM1"

:"64ESDSWMWIM"
if exist "%DriveLetter%\x64\sources\install.esd" set Install=install.esd
if exist "%DriveLetter%\x64\sources\install.swm" set Install=install.swm
if exist "%DriveLetter%\x64\sources\install.wim" set Install=install.wim
goto "64DISM1"

:"IndexSet"
set Index=
goto "bootmgrSet"

:"bootmgrSet"
set bootmgr=
if not exist "%DriveLetter%\bootmgr" set bootmgr=Arm64
goto "DISM1"

:"DISM1"
if exist "Index.txt" goto "IndexExist"
echo.
echo Getting index details for Windows Disk Image "%DriveLetter%".
"%windir%\System32\Dism.exe" /Get-WimInfo /WimFile:"%DriveLetter%\sources\%Install%" | find /c /i "Index" > "Index.txt"
set /p IndexNumber=< "Index.txt"
del "Index.txt" /f /q > nul 2>&1
"%windir%\System32\Dism.exe" /Get-WimInfo /WimFile:"%DriveLetter%\sources\%Install%"
if not "%errorlevel%"=="0" goto "DriveLetter"
echo Got index details for Windows Disk Image "%DriveLetter%".
if "%Index%"=="True" goto "IndexDone"
if "%IndexNumber%"=="3" goto "Index3"
if "%IndexNumber%"=="7" goto "Index7"
if "%IndexNumber%"=="11" goto "Index11"
echo.
echo Invalid Windows Disk Image!
goto "Start"

:"IndexExist"
set Index=True
echo.
echo Please temporary rename to something else or temporary move to another location "Index.txt" in order for this batch file to proceed. "Index.txt" is not a system file. "Index.txt" is located in the folder you ran this batch file from. Press any key to continue when "Index.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
pause > nul 2>&1
goto "DISM1"

:"IndexDone"
echo.
echo You can now rename or move back the file back to "Index.txt".
if "%IndexNumber%"=="3" goto "Index3"
if "%IndexNumber%"=="7" goto "Index7"
if "%IndexNumber%"=="11" goto "Index11"
echo.
echo Invalid Windows Disk Image!
goto "Start"

:"32DISM1"
echo.
echo Getting index details for Windows Disk Image "%DriveLetter%".
"%windir%\System32\Dism.exe" /Get-WimInfo /WimFile:"%DriveLetter%\x86\sources\%Install%"
if not "%errorlevel%"=="0" goto "DriveLetter"
echo Got index details for Windows Disk Image "%DriveLetter%".
goto "Index7"

:"64DISM1"
echo.
echo Getting index details for Windows Disk Image "%DriveLetter%".
"%windir%\System32\Dism.exe" /Get-WimInfo /WimFile:"%DriveLetter%\x64\sources\%Install%"
if not "%errorlevel%"=="0" goto "DriveLetter"
echo Got index details for Windows Disk Image "%DriveLetter%".
goto "Index7"

:"Index3"
echo.
set Index=
set /p Index="Which index do you want? (1-3) "
if /i "%Index%"=="1" goto "SureIndex3"
if /i "%Index%"=="2" goto "SureIndex3"
if /i "%Index%"=="3" goto "SureIndex3"
echo Invalid syntax!
goto "Bit2"

:"SureIndex3"
echo.
set SureIndex=
set /p SureIndex="Are you sure you want Index %Index%? (Yes/No) "
if /i "%SureIndex%"=="Yes" goto "AttachDisk"
if /i "%SureIndex%"=="No" goto "Index3"
echo Invalid syntax!
goto "SureIndex3"

:"Index7"
echo.
set Index=
set /p Index="Which index do you want? (1-7) "
if /i "%Index%"=="1" goto "SureIndex7"
if /i "%Index%"=="2" goto "SureIndex7"
if /i "%Index%"=="3" goto "SureIndex7"
if /i "%Index%"=="4" goto "SureIndex7"
if /i "%Index%"=="5" goto "SureIndex7"
if /i "%Index%"=="6" goto "SureIndex7"
if /i "%Index%"=="7" goto "SureIndex7"
echo Invalid syntax!
goto "Bit2"

:"SureIndex7"
echo.
set SureIndex=
set /p SureIndex="Are you sure you want Index %Index%? (Yes/No) "
if /i "%SureIndex%"=="Yes" goto "AttachDisk"
if /i "%SureIndex%"=="No" goto "Index7"
echo Invalid syntax!
goto "SureIndex7"

:"Index11"
echo.
set Index=
set /p Index="Which index do you want? (1-11) "
if /i "%Index%"=="1" goto "SureIndex11"
if /i "%Index%"=="2" goto "SureIndex11"
if /i "%Index%"=="3" goto "SureIndex11"
if /i "%Index%"=="4" goto "SureIndex11"
if /i "%Index%"=="5" goto "SureIndex11"
if /i "%Index%"=="6" goto "SureIndex11"
if /i "%Index%"=="7" goto "SureIndex11"
if /i "%Index%"=="8" goto "SureIndex11"
if /i "%Index%"=="9" goto "SureIndex11"
if /i "%Index%"=="10" goto "SureIndex11"
if /i "%Index%"=="11" goto "SureIndex11"
echo Invalid syntax!
goto "Bit2"

:"SureIndex11"
echo.
set SureIndex=
set /p SureIndex="Are you sure you want Index %Index%? (Yes/No) "
if /i "%SureIndex%"=="Yes" goto "AttachDisk"
if /i "%SureIndex%"=="No" goto "Index11"
echo Invalid syntax!
goto "SureIndex11"

:"AttachDisk"
echo.
if /i "%WindowsType%"=="1" echo Please attach an SSD or a HDD then press any key to continue.
if /i "%WindowsType%"=="2" echo Please attach an external SSD or a WTG certifed drive then press any key to continue.
pause > nul 2>&1
goto "DiskPartSet"

:"DiskPartSet"
set DiskPart=
goto "Disk"

:"Disk"
if exist "diskpart.txt" goto "DiskPartExistDisk"
echo.
echo Finding disks attached to this PC.
(echo list disk) > "diskpart.txt"
(echo exit) >> "diskpart.txt"
"%windir%\System32\diskpart.exe" /s "diskpart.txt" 2>&1
if not "%errorlevel%"=="0" goto "DiskError"
del "diskpart.txt" /f /q > nul 2>&1
echo Disks attached to this PC found.
echo.
set Disk=
set /p Disk="What is the disk number of the drive you attached to this PC? (0-?) "
goto "SureDisk"

:"DiskPartExistDisk"
set DiskPart=True
echo.
echo Please temporary rename to something else or temporary move to another location "diskpart.txt" in order for this batch file to proceed. "diskpart.txt" is not a system file. "diskpart.txt" is located in the folder you ran this batch file from. Press any key to continue when "diskpart.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
pause > nul 2>&1
goto "Disk"

:"DiskError"
del "diskpart.txt" /f /q > nul 2>&1
echo There has been an error! Press any key to try again.
pause > nul 2>&1
goto "AttachDisk"

:"SureDisk"
echo.
set SureDisk=
set /p SureDisk="All data on disk %Disk% will be deleted! Are you sure disk %Disk% is the correct disk number? (Yes/No) "
if /i "%SureDisk%"=="Yes" goto "System"
if /i "%SureDisk%"=="No" goto "Disk"
echo Invalid syntax!
goto "SureDisk"

:"System"
echo.
set System=
set /p System="Please enter an unused drive letter. (A:-Z:) "
if /i "%System%"=="%DriveLetter%" goto "SameDriveLetterSystemDriveLetter"
if exist "%System%" goto "ExistSystem"
if /i "%System%"=="A:" goto "Windows"
if /i "%System%"=="B:" goto "Windows"
if /i "%System%"=="C:" goto "Windows"
if /i "%System%"=="D:" goto "Windows"
if /i "%System%"=="E:" goto "Windows"
if /i "%System%"=="F:" goto "Windows"
if /i "%System%"=="G:" goto "Windows"
if /i "%System%"=="H:" goto "Windows"
if /i "%System%"=="I:" goto "Windows"
if /i "%System%"=="J:" goto "Windows"
if /i "%System%"=="K:" goto "Windows"
if /i "%System%"=="L:" goto "Windows"
if /i "%System%"=="M:" goto "Windows"
if /i "%System%"=="N:" goto "Windows"
if /i "%System%"=="O:" goto "Windows"
if /i "%System%"=="P:" goto "Windows"
if /i "%System%"=="Q:" goto "Windows"
if /i "%System%"=="R:" goto "Windows"
if /i "%System%"=="S:" goto "Windows"
if /i "%System%"=="T:" goto "Windows"
if /i "%System%"=="U:" goto "Windows"
if /i "%System%"=="V:" goto "Windows"
if /i "%System%"=="W:" goto "Windows"
if /i "%System%"=="X:" goto "Windows"
if /i "%System%"=="Y:" goto "Windows"
if /i "%System%"=="Z:" goto "Windows"
echo Invalid syntax!
goto "System"

:"SameDriveLetterSystemDriveLetter"
echo Unused drive letter ("%System%") is the same as Windows Disk Image drive letter ("%DriveLetter%")! Please try again.
goto "System"

:"ExistSystem"
echo "%System%" exists! Please try again.
goto "System"

:"Windows"
echo.
set Windows=
set /p Windows="Please enter another unused drive letter. (A:-Z:) "
if /i "%Windows%"=="%DriveLetter%" goto "SameDriveLetterWindowsDriveLetter"
if /i "%Windows%"=="%System%" goto "SameDriveLetterWindowsSystem"
if exist "%Windows%" goto "ExistWindows"
if /i "%Windows%"=="A:" goto "WindowsCheck"
if /i "%Windows%"=="B:" goto "WindowsCheck"
if /i "%Windows%"=="C:" goto "WindowsCheck"
if /i "%Windows%"=="D:" goto "WindowsCheck"
if /i "%Windows%"=="E:" goto "WindowsCheck"
if /i "%Windows%"=="F:" goto "WindowsCheck"
if /i "%Windows%"=="G:" goto "WindowsCheck"
if /i "%Windows%"=="H:" goto "WindowsCheck"
if /i "%Windows%"=="I:" goto "WindowsCheck"
if /i "%Windows%"=="J:" goto "WindowsCheck"
if /i "%Windows%"=="K:" goto "WindowsCheck"
if /i "%Windows%"=="L:" goto "WindowsCheck"
if /i "%Windows%"=="M:" goto "WindowsCheck"
if /i "%Windows%"=="N:" goto "WindowsCheck"
if /i "%Windows%"=="O:" goto "WindowsCheck"
if /i "%Windows%"=="P:" goto "WindowsCheck"
if /i "%Windows%"=="Q:" goto "WindowsCheck"
if /i "%Windows%"=="R:" goto "WindowsCheck"
if /i "%Windows%"=="S:" goto "WindowsCheck"
if /i "%Windows%"=="T:" goto "WindowsCheck"
if /i "%Windows%"=="U:" goto "WindowsCheck"
if /i "%Windows%"=="V:" goto "WindowsCheck"
if /i "%Windows%"=="W:" goto "WindowsCheck"
if /i "%Windows%"=="X:" goto "WindowsCheck"
if /i "%Windows%"=="Y:" goto "WindowsCheck"
if /i "%Windows%"=="Z:" goto "WindowsCheck"
echo Invalid syntax!
goto "Windows"

:"SameDriveLetterWindowsDriveLetter"
echo Second unused drive letter ("%Windows%") is the same as Windows Disk Image drive letter ("%DriveLetter%")! Please try again.
goto "Windows"

:"SameDriveLetterWindowsSystem"
echo Second unused drive letter ("%Windows%") same as First unused drive letter ("%System%"). Please try again.
goto "Windows"

:"ExistWindows"
echo "%Windows%" exists! Please try again.
goto "Windows"

:"WindowsCheck"
if /i "%DiskPartWindowsToGoError%"=="True" goto "DiskPartWindowsToGo"
if /i "%WindowsType%"=="1" goto "RecoveryDriveLetter"
if /i "%WindowsType%"=="2" goto "BIOSSet"

:"RecoveryDriveLetter"
echo.
set Recovery=
set /p Recovery="Please enter a third unused drive letter. (A:-Z:) "
if /i "%Recovery%"=="%DriveLetter%" goto "SameDriveLetterRecovery"
if /i "%Recovery%"=="%System%" goto "SameDriveLetterRecoverySystem"
if /i "%Recovery%"=="%Windows%" goto "SameDriveLetterRecoveryWindows"
if exist "%Recovery%" goto "ExistRecoveryDriveLetter"
if /i "%Recovery%"=="A:" goto "BIOSAsk"
if /i "%Recovery%"=="B:" goto "BIOSAsk"
if /i "%Recovery%"=="C:" goto "BIOSAsk"
if /i "%Recovery%"=="D:" goto "BIOSAsk"
if /i "%Recovery%"=="E:" goto "BIOSAsk"
if /i "%Recovery%"=="F:" goto "BIOSAsk"
if /i "%Recovery%"=="G:" goto "BIOSAsk"
if /i "%Recovery%"=="H:" goto "BIOSAsk"
if /i "%Recovery%"=="I:" goto "BIOSAsk"
if /i "%Recovery%"=="J:" goto "BIOSAsk"
if /i "%Recovery%"=="K:" goto "BIOSAsk"
if /i "%Recovery%"=="L:" goto "BIOSAsk"
if /i "%Recovery%"=="M:" goto "BIOSAsk"
if /i "%Recovery%"=="N:" goto "BIOSAsk"
if /i "%Recovery%"=="O:" goto "BIOSAsk"
if /i "%Recovery%"=="P:" goto "BIOSAsk"
if /i "%Recovery%"=="Q:" goto "BIOSAsk"
if /i "%Recovery%"=="R:" goto "BIOSAsk"
if /i "%Recovery%"=="S:" goto "BIOSAsk"
if /i "%Recovery%"=="T:" goto "BIOSAsk"
if /i "%Recovery%"=="U:" goto "BIOSAsk"
if /i "%Recovery%"=="V:" goto "BIOSAsk"
if /i "%Recovery%"=="W:" goto "BIOSAsk"
if /i "%Recovery%"=="X:" goto "BIOSAsk"
if /i "%Recovery%"=="Y:" goto "BIOSAsk"
if /i "%Recovery%"=="Z:" goto "BIOSAsk"
echo Invalid syntax!
goto "RecoveryDriveLetter"

:"SameDriveLetterRecovery"
echo Third unused drive letter ("%Recovery%") is the same as Windows Disk Image drive letter ("%DriveLetter%")! Please try again.
goto "RecoveryDriveLetter"

:"SameDriveLetterRecoverySystem"
echo Third unused drive letter ("%Recovery%") same as first unused drive letter ("%System%"). Please try again.
goto "RecoveryDriveLetter"

:"SameDriveLetterRecoveryWindows"
echo Third unused drive letter ("%Recovery%") same as second unused drive letter ("%Windows%"). Please try again.
goto "RecoveryDriveLetter"

:"ExistRecoveryDriveLetter"
echo "%Recovery%" exists! Please try again.
goto "RecoveryDriveLetter"

:"BIOSAsk"
if /i "%DiskPartWindowsError%"=="True" goto "DiskPartWindows"
if /i "%bootmgr%"=="Arm64" set BIOSAsk=2
if /i "%bootmgr%"=="Arm64" goto "fsutil"
echo.
echo [1] Legacy BIOS.
echo [2] UEFI.
echo [3] Both.
echo.
set BIOSAsk=
set /p BIOSAsk="Are you installing for Legacy BIOS, UEFI or both? (1-3) "
if /i "%BIOSAsk%"=="1" goto "SureBIOSAsk"
if /i "%BIOSAsk%"=="2" goto "SureBIOSAsk"
if /i "%BIOSAsk%"=="3" goto "SureBIOSAsk"
echo Invalid syntax!
goto "BIOSAsk"

:"SureBIOSAsk"
echo.
set SureBIOSAsk=
if /i "%BIOSAsk%"=="1" set /p SureBIOSAsk="Are you sure you are installing for Legacy BIOS? (Yes/No) "
if /i "%BIOSAsk%"=="2" set /p SureBIOSAsk="Are you sure you are installing for UEFI? (Yes/No) "
if /i "%BIOSAsk%"=="3" set /p SureBIOSAsk="Are you sure you are installing for both? (Yes/No) "
if /i "%SureBIOSAsk%"=="Yes" if /i "%BIOSAsk%"=="1" goto "DiskPartWindows"
if /i "%SureBIOSAsk%"=="Yes" if /i "%BIOSAsk%"=="2" goto "fsutil"
if /i "%SureBIOSAsk%"=="Yes" if /i "%BIOSAsk%"=="3" goto "DiskPartWindows"
if /i "%SureBIOSAsk%"=="No" goto "BIOSAsk"
echo Invalid syntax!
goto "SureBIOSAsk"

:"fsutil"
if exist "fsutil.txt" goto "fsutilExist"
echo.
echo Getting disk %Disk% details.
"%windir%\System32\fsutil.exe" fsinfo sectorinfo \\.\PhysicalDrive%Disk% | find /i /c "PhysicalBytesPerSectorForAtomicity :                    4096" > "fsutil.txt"
set /p fsutil=< "fsutil.txt"
echo Got disk %Disk% details.
del "fsutil.txt" /f /q > nul 2>&1
if /i "%fsutil%"=="True" goto "fsutilDone"
goto "DiskPartWindows"

:"fsutilExist"
set fsutil=True
echo.
echo Please temporary rename to something else or temporary move to another location "fsutil.txt" in order for this batch file to proceed. "fsutil.txt" is not a system file. "fsutil.txt" is located in the folder you ran this batch file from. Press any key to continue when "fsutil.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
pause > nul 2>&1
goto "fsutil"

:"fsutilDone"
echo.
echo You can now rename or move back the file back to "fsutil.txt". Press any key to continue.
pause > nul 2>&1
goto "DiskPartWindows"

:"DiskPartWindows"
if exist "diskpart.txt" goto "DiskPartExistDiskPartWindows"
echo.
echo Partitioning and formating disk %Disk%.
(echo select disk %Disk%) > "diskpart.txt"
(echo clean) >> "diskpart.txt"
if /i "%BIOSAsk%"=="1" (echo convert mbr) >> "diskpart.txt"
if /i "%BIOSAsk%"=="2" (echo convert gpt) >> "diskpart.txt"
if /i "%BIOSAsk%"=="3" (echo convert mbr) >> "diskpart.txt"
if /i "%BIOSAsk%"=="1" (echo create partition primary size=100) >> "diskpart.txt"
if /i "%BIOSAsk%"=="2" if /i "%fsutil%"=="0" (echo create partition efi size=100) >> "diskpart.txt"
if /i "%BIOSAsk%"=="2" if /i "%fsutil%"=="1" (echo create partition efi size=260) >> "diskpart.txt"
if /i "%BIOSAsk%"=="3" (echo create partition primary size=100) >> "diskpart.txt"
(echo format quick fs=fat32 label="System")  >> "diskpart.txt"
(echo assign letter="%System%") >> "diskpart.txt"
if /i "%BIOSAsk%"=="1" (echo active) >> "diskpart.txt"
if /i "%BIOSAsk%"=="3" (echo active) >> "diskpart.txt"
if /i "%BIOSAsk%"=="2" (echo create partition msr size=16) >> "diskpart.txt"
(echo create partition primary) >> "diskpart.txt"
(echo shrink minimum=990) >> "diskpart.txt"
(echo format quick fs=ntfs label="Windows") >> "diskpart.txt"
(echo assign letter="%Windows%") >> "diskpart.txt"
(echo create partition primary) >> "diskpart.txt"
(echo format quick fs=ntfs label="Recovery") >> "diskpart.txt"
(echo assign letter="%Recovery%") >> "diskpart.txt"
if /i "%BIOSAsk%"=="1" (echo set id=27) >> "diskpart.txt"
if /i "%BIOSAsk%"=="2" (echo set id="de94bba4-06d1-4d40-a16a-bfd50179d6ac") >> "diskpart.txt"
if /i "%BIOSAsk%"=="3" (echo set id=27) >> "diskpart.txt"
if /i "%BIOSAsk%"=="2" (echo gpt attributes=0x8000000000000001) >> "diskpart.txt"
(echo exit) >> "diskpart.txt"
"%windir%\System32\diskpart.exe" /s "diskpart.txt" > nul 2>&1
if not "%errorlevel%"=="0" goto "DiskPartErrorDiskPartWindows"
del "diskpart.txt" /f /q > nul 2>&1
echo Disk %Disk% partitioned and formated.
goto "Bit3"

:"DiskPartExistDiskDiskPartWindows"
set DiskPart=True
echo.
echo Please temporary rename to something else or temporary move to another location "diskpart.txt" in order for this batch file to proceed. "diskpart.txt" is not a system file. "diskpart.txt" is located in the folder you ran this batch file from. Press any key to continue when "diskpart.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
pause > nul 2>&1
goto "DiskPartWindows"

:"DiskPartErrorDiskPartWindows"
del "diskpart.txt" /f /q > nul 2>&1
set DiskPartWindowsError=True
echo Error formating and partitioning disk %Disk%. Disk %Disk% may not exist! Disk %Disk% may be smaller than 64 GB! Press any key to try again.
pause > nul 2>&1
goto "Disk"

:"BIOSSet"
if /i "%bootmgr%"=="Arm64" set BIOSAsk=2
if /i not "%bootmgr%"=="Arm64" set BIOSAsk=3
goto "DiskPartToGo"

:"DiskPartToGo"
if exist "diskpart.txt" goto "DiskPartExistDiskPartToGo"
echo.
echo Partitioning and formating disk %Disk%.
(echo sel disk %Disk%) > "diskpart.txt"
(echo clean) >> "diskpart.txt"
if /i "%BIOSAsk%"=="3"=="Arm64" (echo convert mbr) >> "diskpart.txt"
if /i "%BIOSAsk%"=="2" (echo convert gpt) >> "diskpart.txt"
if /i "%BIOSAsk%"=="3" (echo create partition Primary size=350) >> "diskpart.txt"
if /i "%BIOSAsk%"=="2" (echo create partition efi size=350) >> "diskpart.txt"
(echo format fs=fat32 label="WTG-System" quick) >> "diskpart.txt"
(echo assign letter=%System%) >> "diskpart.txt"
if /i not "%bootmgr%"=="Arm64" (echo active) >> "diskpart.txt"
(echo create partition Primary) >> "diskpart.txt"
(echo format fs=NTFS label="WTG-Windows" quick) >> "diskpart.txt"
(echo assign letter=%Windows%) >> "diskpart.txt"
(echo attributes vol set nodefaultdriveletter) >> "diskpart.txt"
(echo exit) >> "diskpart.txt"
"%windir%\System32\diskpart.exe" /s "diskpart.txt" > nul 2>&1
if not "%errorlevel%"=="0" goto "DiskPartToGoError"
del "diskpart.txt" /f /q > nul 2>&1
echo Disk %Disk% partitioned and formated.
goto "Bit3"

:"DiskPartExistDiskPartToGo"
set DiskPart=True
echo.
echo Please temporary rename to something else or temporary move to another location "diskpart.txt" in order for this batch file to proceed. "diskpart.txt" is not a system file. "diskpart.txt" is located in the folder you ran this batch file from. Press any key to continue when "diskpart.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
pause > nul 2>&1
goto "DiskPartToGo"

:"DiskPartToGoError"
del "diskpart.txt" /f /q > nul 2>&1
set DiskPartToGoError=True
echo Error formating and partitioning disk %Disk%. Disk %Disk% may not exist! Disk %Disk% may be smaller than 64 GB! Press any key to try again.
pause > nul 2>&1
goto "Disk"

:"Bit3"
if /i "%Bit%"=="32" goto "32DISM2"
if /i "%Bit%"=="64" goto "64DISM2"
goto "DISM2"

:"DISM2"
echo.
if /i "%WindowsType%"=="1" echo Installing Windows.
if /i "%WindowsType%"=="2" echo Installing Windows To Go.
"%windir%\System32\Dism.exe" /Apply-Image /ImageFile:"%DriveLetter%\sources\%Install%" /Index:%Index% /ApplyDir:"%Windows%"
if not "%errorlevel%"=="0" goto "BitDetection"
if /i "%WindowsType%"=="1" echo Windows installed.
if /i "%WindowsType%"=="2" echo Windows To Go installed.
goto "Bootloader"

:"32DISM2"
echo.
if /i "%WindowsType%"=="1" echo Installing Windows.
if /i "%WindowsType%"=="2" echo Installing Windows To Go.
"%windir%\System32\Dism.exe" /Apply-Image /ImageFile:"%DriveLetter%\x86\sources\%Install%" /Index:%Index% /ApplyDir:"%Windows%"
if not "%errorlevel%"=="0" goto "BitDetection"
if /i "%WindowsType%"=="1" echo Windows installed.
if /i "%WindowsType%"=="2" echo Windows To Go installed.
goto "Bootloader"

:"64DISM2"
echo.
if /i "%WindowsType%"=="1" echo Installing Windows.
if /i "%WindowsType%"=="2" echo Installing Windows To Go.
"%windir%\System32\Dism.exe" /Apply-Image /ImageFile:"%DriveLetter%\x64\sources\%Install%" /Index:%Index% /ApplyDir:"%Windows%"
if not "%errorlevel%"=="0" goto "BitDetection"
if /i "%WindowsType%"=="1" echo Windows installed.
if /i "%WindowsType%"=="2" echo Windows To Go installed.
goto "Bootloader"

:"Bootloader"
echo.
echo Creating bootloader.
if /i "%BIOSAsk%"=="1" "%windir%\System32\bcdboot.exe" "%Windows%\Windows" /s "%System%" /f BIOS > nul 2>&1
if /i "%BIOSAsk%"=="2" "%windir%\System32\bcdboot.exe" "%Windows%\Windows" /s "%System%" /f UEFI > nul 2>&1
if /i "%BIOSAsk%"=="3" "%windir%\System32\bcdboot.exe" "%Windows%\Windows" /s "%System%" /f ALL > nul 2>&1
if not "%errorlevel%"=="0" goto "BootloaderError"
goto "DiskPartBootloader"

:"BootloaderError"
del "diskpart.txt" /f /q > nul 2>&1
echo Error creating the bootloader! Press any key to try again.
pause > nul 2>&1
goto "Bootloader"

:"DiskPartBootloader"
if exist "diskpart.txt" goto "DiskPartExistBootloader"
(echo sel vol %System%) > "diskpart.txt"
(echo remove letter=%System%) >> "diskpart.txt"
(echo exit) >> "diskpart.txt"
"%windir%\System32\diskpart.exe" /s "diskpart.txt" > nul 2>&1
if not "%errorlevel%"=="0" goto "BootloaderError"
del "diskpart.txt" /f /q > nul 2>&1
echo Bootloader created.
if /i "%WindowsType%"=="2" if /i "%DiskPart%"=="True" goto "DiskPartDone"
if /i "%WindowsType%"=="2" goto "SANPolicy"
goto "Recovery"

:"DiskPartExistBootloader"
set DiskPart=True
echo Please temporary rename to something else or temporary move to another location "diskpart.txt" in order for this batch file to proceed. "diskpart.txt" is not a system file. "diskpart.txt" is located in the folder you ran this batch file from. Press any key to continue when "diskpart.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
pause > nul 2>&1
goto "DiskPartBootloader"

:"Recovery"
echo.
echo Creating recovery partition files.
if not exist "%Recovery%\Recovery\WindowsRE" md "%Recovery%\Recovery\WindowsRE" > nul 2>&1
if not exist "%Recovery%\Recovery\WindowsRE\winre.wim" copy "%Windows%\Windows\System32\Recovery\winre.wim" "%Recovery%\Recovery\WindowsRE\winre.wim" /y /v > nul 2>&1
"%windir%\System32\ReAgentc.exe" /setreimage /path "%Recovery%\Recovery\WindowsRE" /target "%Windows%\Windows" > nul 2>&1
if not "%errorlevel%"=="0" goto "RecoveryError"
goto "DiskPartRecovery"

:"RecoveryError"
echo There has been an error creating the recovery partition files! Press any key to try again!
pause > nul 2>&1
goto "Recovery"

:"DiskPartRecovery"
if exist "diskpart.txt" goto "DiskPartExistRecovery"
(echo sel vol %Recovery%) > "diskpart.txt"
(echo remove letter=%Recovery%) >> "diskpart.txt"
(echo exit) >> "diskpart.txt"
"%windir%\System32\diskpart.exe" /s "diskpart.txt" > nul 2>&1
if not "%errorlevel%"=="0" goto "RecoveryError"
del "diskpart.txt" /f /q > nul 2>&1
echo Recovery partition created.
if /i "%DiskPart%"=="True" goto "DiskPartDone"
if /i "%BIOSAsk%"=="1" goto "DoneBIOS"
if /i "%BIOSAsk%"=="2" goto "DoneUEFI"
if /i "%BIOSAsk%"=="3" goto "DoneBothWindows"

:"DiskPartExistRecovery"
set DiskPart=True
echo Please temporary rename to something else or temporary move to another location "diskpart.txt" in order for this batch file to proceed. "diskpart.txt" is not a system file. "diskpart.txt" is located in the folder you ran this batch file from. Press any key to continue when "diskpart.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
pause > nul 2>&1
goto "DiskPartRecovery"

:"DiskPartDone"
echo.
echo You can now rename or move back the file back to "diskpart.txt". Press any key to continue.
pause > nul 2>&1
if /i "%WindowsType%"=="2" goto "SANPolicy"
if /i "%BIOSAsk%"=="1" goto "DoneBIOS"
if /i "%BIOSAsk%"=="2" goto "DoneUEFI"
if /i "%BIOSAsk%"=="3" goto "DoneBothWindows"

:"SANPolicy"
echo.
echo Applying SAN policy.
(echo ^<?xml version="1.0" encoding="utf-8" standalone="yes"?^>) >> "%Windows%\san_policy.xml"
(echo ^<unattend xmlns="urn:schemas-microsoft-com:unattend"^>) >> "%Windows%\san_policy.xml"
(echo   ^<settings pass="offlineServicing"^>) >> "%Windows%\san_policy.xml"
(echo     ^<component) >> "%Windows%\san_policy.xml"
(echo         xmlns:wcm="https://schemas.microsoft.com/WMIConfig/2002/State") >> "%Windows%\san_policy.xml"
(echo         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance") >> "%Windows%\san_policy.xml"
(echo         language="neutral") >> "%Windows%\san_policy.xml"
(echo         name="Microsoft-Windows-PartitionManager") >> "%Windows%\san_policy.xml"
(echo         processorArchitecture="arm64") >> "%Windows%\san_policy.xml"
(echo         publicKeyToken="31bf3856ad364e35") >> "%Windows%\san_policy.xml"
(echo         versionScope="nonSxS") >> "%Windows%\san_policy.xml"
(echo         ^>) >> "%Windows%\san_policy.xml"
(echo       ^<SanPolicy^>4^</SanPolicy^>) >> "%Windows%\san_policy.xml"
(echo     ^</component^>) >> "%Windows%\san_policy.xml"
(echo     ^<component) >> "%Windows%\san_policy.xml"
(echo         xmlns:wcm="https://schemas.microsoft.com/WMIConfig/2002/State") >> "%Windows%\san_policy.xml"
(echo         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance") >> "%Windows%\san_policy.xml"
(echo         language="neutral") >> "%Windows%\san_policy.xml"
(echo         name="Microsoft-Windows-PartitionManager") >> "%Windows%\san_policy.xml"
(echo         processorArchitecture="amd64") >> "%Windows%\san_policy.xml"
(echo         publicKeyToken="31bf3856ad364e35") >> "%Windows%\san_policy.xml"
(echo         versionScope="nonSxS") >> "%Windows%\san_policy.xml"
(echo         ^>) >> "%Windows%\san_policy.xml"
(echo       ^<SanPolicy^>4^</SanPolicy^>) >> "%Windows%\san_policy.xml"
(echo     ^</component^>) >> "%Windows%\san_policy.xml"
(echo     ^<component) >> "%Windows%\san_policy.xml"
(echo         xmlns:wcm="https://schemas.microsoft.com/WMIConfig/2002/State") >> "%Windows%\san_policy.xml"
(echo         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance") >> "%Windows%\san_policy.xml"
(echo         language="neutral") >> "%Windows%\san_policy.xml"
(echo         name="Microsoft-Windows-PartitionManager") >> "%Windows%\san_policy.xml"
(echo         processorArchitecture="x86") >> "%Windows%\san_policy.xml"
(echo         publicKeyToken="31bf3856ad364e35") >> "%Windows%\san_policy.xml"
(echo         versionScope="nonSxS") >> "%Windows%\san_policy.xml"
(echo         ^>) >> "%Windows%\san_policy.xml"
(echo       ^<SanPolicy^>4^</SanPolicy^>) >> "%Windows%\san_policy.xml"
(echo     ^</component^>) >> "%Windows%\san_policy.xml"
(echo   ^</settings^>) >> "%Windows%\san_policy.xml"
(echo ^</unattend^>) >> "%Windows%\san_policy.xml"
DISM /Image:%Windows% /Apply-Unattend:%Windows%\san_policy.xml
if not "%errorlevel%"=="0" goto "SANError"
echo SAN policy applied.
goto "Unattended"

:"SANError"
echo There has been an error! Press any key to try again.
pause > nul 2>&1
goto "SANPolicy"

:"Unattended"
echo.
echo Creating "unattended.xml" file in Sysprep folder.
(echo ^<?xml version="1.0" encoding="utf-8"?^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo ^<unattend xmlns="urn:schemas-microsoft-com:unattend"^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo     ^<settings pass="oobeSystem"^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^<component name="Microsoft-Windows-Shell-Setup" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" processorArchitecture="Arm64" xmlns:wcm="https://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo             ^<OOBE^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo                 ^<HideEULAPage^>true^</HideEULAPage^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo                 ^<ProtectYourPC^>1^</ProtectYourPC^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo                 ^<NetworkLocation^>Work^</NetworkLocation^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo             ^</OOBE^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^</component^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^<component name="Microsoft-Windows-International-Core" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" processorArchitecture="Arm64"^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo           ^<InputLocale^>en-US^</InputLocale^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo           ^<SystemLocale^>en-US^</SystemLocale^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo           ^<UILanguage^>en-US^</UILanguage^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo           ^<UserLocale^>en-US^</UserLocale^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^</component^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^<component name="Microsoft-Windows-WinRE-RecoveryAgent" processorArchitecture="arm64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="https://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo             ^<UninstallWindowsRE^>true^</UninstallWindowsRE^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^</component^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^<component name="Microsoft-Windows-Shell-Setup" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" processorArchitecture="AMD64" xmlns:wcm="https://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo             ^<OOBE^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo                 ^<HideEULAPage^>true^</HideEULAPage^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo                 ^<ProtectYourPC^>1^</ProtectYourPC^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo                 ^<NetworkLocation^>Work^</NetworkLocation^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo             ^</OOBE^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^</component^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^<component name="Microsoft-Windows-International-Core" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" processorArchitecture="AMD64"^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo           ^<InputLocale^>en-US^</InputLocale^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo           ^<SystemLocale^>en-US^</SystemLocale^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo           ^<UILanguage^>en-US^</UILanguage^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo           ^<UserLocale^>en-US^</UserLocale^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^</component^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^<component name="Microsoft-Windows-WinRE-RecoveryAgent" processorArchitecture="amd64" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="https://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo             ^<UninstallWindowsRE^>true^</UninstallWindowsRE^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^</component^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^<component name="Microsoft-Windows-Shell-Setup" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" processorArchitecture="X86" xmlns:wcm="https://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo             ^<OOBE^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo                 ^<HideEULAPage^>true^</HideEULAPage^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo                 ^<ProtectYourPC^>1^</ProtectYourPC^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo                 ^<NetworkLocation^>Work^</NetworkLocation^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo             ^</OOBE^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^</component^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^<component name="Microsoft-Windows-International-Core" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" processorArchitecture="x86"^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo           ^<InputLocale^>en-US^</InputLocale^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo           ^<SystemLocale^>en-US^</SystemLocale^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo           ^<UILanguage^>en-US^</UILanguage^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo           ^<UserLocale^>en-US^</UserLocale^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^</component^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^<component name="Microsoft-Windows-WinRE-RecoveryAgent" processorArchitecture="x86" publicKeyToken="31bf3856ad364e35" language="neutral" versionScope="nonSxS" xmlns:wcm="https://schemas.microsoft.com/WMIConfig/2002/State" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo             ^<UninstallWindowsRE^>true^</UninstallWindowsRE^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo         ^</component^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo     ^</settings^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
(echo ^</unattend^>) >> %Windows%\Windows\System32\Sysprep\unattend.xml
echo "unattended.xml" file created in Sysprep folder.
if /i "%BIOSAsk%"=="2" goto "DoneUEFI"
goto "DoneBothWindowsToGo"

:"DoneBIOS"
endlocal
echo.
echo Your Windows is ready! It is bootable with legacy BIOS only. Press any key to close this batch file.
pause > nul 2>&1
exit

:"DoneUEFI"
endlocal
echo.
echo Your Windows is ready! It is bootable with UEFI only. Press any key to close this batch file.
pause > nul 2>&1
exit

:"DoneBothWindows"
endlocal
echo.
echo Your Windows is ready! It is bootable with legacy BIOS and UEFI. Press any key to close this batch file.
pause > nul 2>&1
exit

:"DoneBothWindowsToGo"
endlocal
echo.
echo Your Windows To Go is ready! It is bootable with legacy BIOS and UEFI. Press any key to close this batch file.
pause > nul 2>&1
exit
