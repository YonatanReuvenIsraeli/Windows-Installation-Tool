@echo off
title Windows Installation Tool
setlocal
echo Program Name: Windows Installation Tool
echo Version: 7.0.10
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
set SureWindowsType=
if /i "%WindowsType%"=="1" set /p SureWindowsType="Are you sure you want to install Windows? (Yes/No) "
if /i "%WindowsType%"=="2" set /p SureWindowsType="Are you sure you want to install Windows To Go? (Yes/No) "
if /i "%SureWindowsType%"=="Yes" goto "Download"
if /i "%SureWindowsType%"=="No" goto "Start"
echo Invalid syntax!
goto "SureWindowsType"

:"Download"
echo.
echo [1] Download Windows 10 22H2 x86/x64 Windows Disk Image/Windows installation media.
echo [2] Download Windows 11 24H2 x64 Windows Disk Image/Windows installation media.
echo [3] Download Windows 11 24H2 Arm64 Windows Disk Image/Windows installation media.
echo [4] Already have downloaded Windows 10 22H2 x86/x64 Windows Disk Image/Windows installation media or Windows 11 24H2 x64/Arm64 Windows Disk Image/Windows installation media.
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
if /i "%Download%"=="1" set /p SureDownload="Are you sure you want to download Windows 10 22H2 x86/x64 Windows Disk Image/Windows installation media? (Yes/No) "
if /i "%Download%"=="2" set /p SureDownload="Are you sure you want to download Windows 11 24H2 x64 Windows Disk Image/Windows installation media? (Yes/No) "
if /i "%Download%"=="3" set /p SureDownload="Are you sure you want to download Windows 11 24H2 Arm64 Windows Disk Image/Windows installation media? (Yes/No) "
if /i "%Download%"=="4" set /p SureDownload="Are you sure you have downloaded Windows 10 22H2 x86/x64 Windows Disk Image/Windows installation media or Windows 11 24H2 x64/Arm64 Windows Disk Image/Windows installation media? (Yes/No) "
if /i "%SureDownload%"=="Yes" goto "DownloadGo"
if /i "%SureDownload%"=="No" goto "Download"
echo Invalid syntax!
goto "SureDownload"

:"DownloadGo"
if /i "%Download%"=="1" goto "10"
if /i "%Download%"=="2" goto "11x64"
if /i "%Download%"=="3" goto "11Arm64"
if /i "%Download%"=="4" goto "Mount"

:"10"
echo.
echo Download Windows 10 22H2 x86/x64 Disk Image/installation media from here. ^-^-^> https://www.microsoft.com/software-download/windows10
echo.
echo Press any key to open the website.
pause > nul 2>&1
start https://www.microsoft.com/software-download/windows10
echo.
echo Press any key to continue once you have downloaded the Windows 10 22H2 x86/x64 Disk Image.
pause > nul 2>&1
goto "Mount"

:"11x64"
echo.
echo Download Windows 11 24H2 x64 Disk Image/installation media from here. ^-^-^> https://www.microsoft.com/software-download/windows11
echo.
echo Press any key to open the website.
pause > nul 2>&1
start https://www.microsoft.com/software-download/windows11
echo.
echo Press any key to continue once you have downloaded the Windows 11 24H2 x64 Disk Image.
pause > nul 2>&1
goto "Mount"

:"11Arm64"
echo.
echo Download Windows 11 24H2 Arm64 Disk Image/installation media from here. ^-^-^> https://www.microsoft.com/software-download/windows11arm64
echo.
echo Press any key to open the website.
pause > nul 2>&1
start https://www.microsoft.com/software-download/windows11arm64
echo.
echo Press any key to continue once you have downloaded the Windows 11 24H2 Arm64 Disk Image.
pause > nul 2>&1
goto "Mount"

:"Mount"
echo.
echo Please mount your Windows Disk Image/Windows installation media then press any key to continue.
pause > nul 2>&1
goto "DriveLetter"

:"DriveLetter"
echo.
set DriveLetter=
set /p DriveLetter="What is the drive letter of your mounted Windows Disk Image/Windows installation media? (A:-Z:) "
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
set /p SureDriveLetter="Are you sure "%DriveLetter%" is the drive letter of your Windows Disk Image/Windows installation media? (Yes/No) "
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
if exist "%DriveLetter%\sources" goto "Sources"
if exist "%DriveLetter%\x86\sources" goto "Bit"
if exist "%DriveLetter%\x64\sources" goto "Bit"
echo "%DriveLetter%" is not a Windows Disk Image/Windows installation media!
goto "DriveLetter"

:"Sources"
if exist "%DriveLetter%\sources" set Sources=%DriveLetter%\sources
goto "ESDSWMWIM"

:"Bit"
echo.
set Bit=
set /p Bit="Do you want 32-bit or 64-bit version of Windows? (32/64) "
if /i "%Bit%"=="32" goto "SureBit"
if /i "%Bit%"=="64" goto "SureBit"
echo Invalid syntax!
goto "Bit"

:"SureBit"
echo.
set SureBit=
set /p SureBit="Are you sure you want a %Bit%-bit version of Windows? (Yes/No) "
if /i "%SureBit%"=="Yes" goto "BitSources"
if /i "%SureBit%"=="No" goto "Bit"
echo Invalid syntax!
goto "SureBit"

:"BitSources"
if /i "%Bit%"=="32" set Sources=%DriveLetter%\x86\sources
if /i "%Bit%"=="64" set Sources=%DriveLetter%\x64\sources
goto "ESDSWMWIM"

:"ESDSWMWIM"
if exist "%Sources%\install.esd" set Install=install.esd
if exist "%Sources%\install.swm" set Install=install.swm
if exist "%Sources%\install.wim" set Install=install.wim
goto "IndexSet"

:"IndexSet"
set Index=
goto "DISM1"

:"DISM1"
if exist "Index.txt" goto "IndexExist"
echo.
echo Getting index details for Windows Disk Image/Windows installation media "%DriveLetter%".
"%windir%\System32\Dism.exe" /Get-ImageInfo /ImageFile:"%Sources%\%Install%" | "%windir%\System32\find.exe" /c /i "Index" > "Index.txt"
set /p IndexNumber=< "Index.txt"
del "Index.txt" /f /q > nul 2>&1
"%windir%\System32\Dism.exe" /Get-ImageInfo /ImageFile:"%Sources%\%Install%"
if not "%errorlevel%"=="0" goto "DriveLetter"
echo Got index details for Windows Disk Image/Windows installation media "%DriveLetter%".
if "%Index%"=="True" goto "IndexDone"
if "%IndexNumber%"=="3" goto "Index3"
if "%IndexNumber%"=="7" goto "Index7"
if "%IndexNumber%"=="11" goto "Index11"
echo.
echo Invalid Windows Disk Image/Windows installation media!
goto "Start"

:"IndexExist"
set Index=True
echo.
echo Please temporarily rename to something else or temporarily move to another location "Index.txt" in order for this batch file to proceed. "Index.txt" is not a system file. "Index.txt" is located in the folder "%cd%". Press any key to continue when "Index.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
pause > nul 2>&1
goto "DISM1"

:"IndexDone"
echo.
echo You can now rename or move the file back to "Index.txt".
if "%IndexNumber%"=="3" goto "Index3"
if "%IndexNumber%"=="7" goto "Index7"
if "%IndexNumber%"=="11" goto "Index11"
echo.
echo Invalid Windows Disk Image/Windows installation media!
goto "Start"

:"Index3"
echo.
set Index=
set /p Index="Which index do you want? (1-3) "
if /i "%Index%"=="1" goto "SureIndex3"
if /i "%Index%"=="2" goto "SureIndex3"
if /i "%Index%"=="3" goto "SureIndex3"
echo Invalid syntax!
goto "Index3"

:"SureIndex3"
echo.
set SureIndex=
set /p SureIndex="Are you sure you want Index %Index%? (Yes/No) "
if /i "%WindowsType%"=="1" if /i "%SureIndex%"=="Yes" goto "BIOSAsk"
if /i "%WindowsType%"=="2" if /i "%SureIndex%"=="Yes" goto "BIOSSet"
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
goto "Index7"

:"SureIndex7"
echo.
set SureIndex=
set /p SureIndex="Are you sure you want Index %Index%? (Yes/No) "
if /i "%WindowsType%"=="1" if /i "%SureIndex%"=="Yes" goto "BIOSAsk"
if /i "%WindowsType%"=="2" if /i "%SureIndex%"=="Yes" goto "BIOSSet"
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
goto "Index11"

:"SureIndex11"
echo.
set SureIndex=
set /p SureIndex="Are you sure you want Index %Index%? (Yes/No) "
if /i "%WindowsType%"=="1" if /i "%SureIndex%"=="Yes" goto "BIOSAsk"
if /i "%WindowsType%"=="2" if /i "%SureIndex%"=="Yes" goto "BIOSSet"
if /i "%SureIndex%"=="No" goto "Index11"
echo Invalid syntax!
goto "SureIndex11"

:"BIOSAsk"
if not exist "%DriveLetter%\bootmgr" set BIOSType=2
if not exist "%DriveLetter%\bootmgr" goto "Disk"
echo.
echo [1] Legacy BIOS.
echo [2] UEFI.
echo [3] Both legacy BIOS and UEFI.
echo.
set BIOSType=
set /p BIOSType="Are you installing for legacy BIOS, UEFI or both legacy BIOS and UEFI? (1-3) "
if /i "%BIOSType%"=="1" goto "SureBIOSAsk"
if /i "%BIOSType%"=="2" goto "SureBIOSAsk"
if /i "%BIOSType%"=="3" goto "SureBIOSAsk"
echo Invalid syntax!
goto "BIOSAsk"

:"SureBIOSAsk"
echo.
set SureBIOS=
if /i "%BIOSType%"=="1" set /p SureBIOSType="Are you sure you are installing for legacy BIOS? (Yes/No) "
if /i "%BIOSType%"=="2" set /p SureBIOSType="Are you sure you are installing for UEFI? (Yes/No) "
if /i "%BIOSType%"=="3" set /p SureBIOSType="Are you sure you are installing for both legacy BIOS and UEFI? (Yes/No) "
if /i "%SureBIOSType%"=="Yes" goto "AttachDisk"
if /i "%SureBIOSType%"=="No" goto "BIOSAsk"
echo Invalid syntax!
goto "SureBIOSAsk"

:"BIOSSet"
if exist "%DriveLetter%\bootmgr" set BIOSType=3
if not exist "%DriveLetter%\bootmgr" set BIOSType=2
goto "AttachDisk"

:"AttachDisk"
echo.
if /i "%WindowsType%"=="1" echo Please attach an SSD or a HDD then press any key to continue.
if /i "%WindowsType%"=="2" echo Please attach an external SSD or a WTG certified drive then press any key to continue.
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
echo Please temporarily rename to something else or temporarily move to another location "diskpart.txt" in order for this batch file to proceed. "diskpart.txt" is not a system file. "diskpart.txt" is located in the folder "%cd%". Press any key to continue when "diskpart.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
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
echo Finding available drive letters.
if not exist "A:" set System=A:
if not exist "A:" goto "DriveLettersUnavailableSet"
if not exist "B:" set System=B:
if not exist "B:" goto "DriveLettersUnavailableSet"
if not exist "C:" set System=C:
if not exist "C:" goto "DriveLettersUnavailableSet"
if not exist "D:" set System=D:
if not exist "D:" goto "DriveLettersUnavailableSet"
if not exist "E:" set System=E:
if not exist "E:" goto "DriveLettersUnavailableSet"
if not exist "F:" set System=F:
if not exist "F:" goto "DriveLettersUnavailableSet"
if not exist "G:" set System=G:
if not exist "G:" goto "DriveLettersUnavailableSet"
if not exist "H:" set System=H:
if not exist "H:" goto "DriveLettersUnavailableSet"
if not exist "I:" set System=I:
if not exist "I:" goto "DriveLettersUnavailableSet"
if not exist "J:" set System=J:
if not exist "J:" goto "DriveLettersUnavailableSet"
if not exist "K:" set System=K:
if not exist "K:" goto "DriveLettersUnavailableSet"
if not exist "L:" set System=L:
if not exist "L:" goto "DriveLettersUnavailableSet"
if not exist "M:" set System=M:
if not exist "M:" goto "DriveLettersUnavailableSet"
if not exist "N:" set System=N:
if not exist "N:" goto "DriveLettersUnavailableSet"
if not exist "O:" set System=O:
if not exist "O:" goto "DriveLettersUnavailableSet"
if not exist "P:" set System=P:
if not exist "P:" goto "DriveLettersUnavailableSet"
if not exist "Q:" set System=Q:
if not exist "Q:" goto "DriveLettersUnavailableSet"
if not exist "R:" set System=R:
if not exist "R:" goto "DriveLettersUnavailableSet"
if not exist "S:" set System=S:
if not exist "S:" goto "DriveLettersUnavailableSet"
if not exist "T:" set System=T:
if not exist "T:" goto "DriveLettersUnavailableSet"
if not exist "U:" set System=U:
if not exist "U:" goto "DriveLettersUnavailableSet"
if not exist "V:" set System=V:
if not exist "V:" goto "DriveLettersUnavailableSet"
if not exist "W:" set System=W:
if not exist "W:" goto "DriveLettersUnavailableSet"
if not exist "X:" set System=X:
if not exist "X:" goto "DriveLettersUnavailableSet"
if not exist "Y:" set System=Y:
if not exist "Y:" goto "DriveLettersUnavailableSet"
if not exist "Z:" set System=Z:
if not exist "Z:" goto "DriveLettersUnavailableSet"
echo No drive letters are available! Please unmount 3 drives and then press any key to try again.
pause > nul 2>&1
goto "System"

:"DriveLettersUnavailableSet"
set DriveLettersUnavailable=
goto "Windows"

:"Windows"
if /i "%DriveLettersUnavailable%"=="True" echo.
if /i "%DriveLettersUnavailable%"=="True" echo Finding available drive letters.
set DriveLettersUnavailable=
if not exist "A:" if /i not "%System%"=="A:" set Windows=A:
if not exist "A:" if /i not "%System%"=="A:" goto "WindowsCheck"
if not exist "B:" if /i not "%System%"=="B:" set Windows=B:
if not exist "B:" if /i not "%System%"=="B:" goto "WindowsCheck"
if not exist "C:" if /i not "%System%"=="C:" set Windows=C:
if not exist "C:" if /i not "%System%"=="C:" goto "WindowsCheck"
if not exist "D:" if /i not "%System%"=="D:" set Windows=D:
if not exist "D:" if /i not "%System%"=="D:" goto "WindowsCheck"
if not exist "E:" if /i not "%System%"=="E:" set Windows=E:
if not exist "E:" if /i not "%System%"=="E:" goto "WindowsCheck"
if not exist "F:" if /i not "%System%"=="F:" set Windows=F:
if not exist "F:" if /i not "%System%"=="F:" goto "WindowsCheck"
if not exist "G:" if /i not "%System%"=="G:" set Windows=G:
if not exist "G:" if /i not "%System%"=="G:" goto "WindowsCheck"
if not exist "H:" if /i not "%System%"=="H:" set Windows=H:
if not exist "H:" if /i not "%System%"=="H:" goto "WindowsCheck"
if not exist "I:" if /i not "%System%"=="I:" set Windows=I:
if not exist "I:" if /i not "%System%"=="I:" goto "WindowsCheck"
if not exist "J:" if /i not "%System%"=="J:" set Windows=J:
if not exist "J:" if /i not "%System%"=="J:" goto "WindowsCheck"
if not exist "K:" if /i not "%System%"=="K:" set Windows=K:
if not exist "K:" if /i not "%System%"=="K:" goto "WindowsCheck"
if not exist "L:" if /i not "%System%"=="L:" set Windows=L:
if not exist "L:" if /i not "%System%"=="L:" goto "WindowsCheck"
if not exist "M:" if /i not "%System%"=="M:" set Windows=M:
if not exist "M:" if /i not "%System%"=="M:" goto "WindowsCheck"
if not exist "N:" if /i not "%System%"=="N:" set Windows=N:
if not exist "N:" if /i not "%System%"=="N:" goto "WindowsCheck"
if not exist "O:" if /i not "%System%"=="O:" set Windows=O:
if not exist "O:" if /i not "%System%"=="O:" goto "WindowsCheck"
if not exist "P:" if /i not "%System%"=="P:" set Windows=P:
if not exist "P:" if /i not "%System%"=="P:" goto "WindowsCheck"
if not exist "Q:" if /i not "%System%"=="Q:" set Windows=Q:
if not exist "Q:" if /i not "%System%"=="Q:" goto "WindowsCheck"
if not exist "R:" if /i not "%System%"=="R:" set Windows=R:
if not exist "R:" if /i not "%System%"=="R:" goto "WindowsCheck"
if not exist "S:" if /i not "%System%"=="S:" set Windows=S:
if not exist "S:" if /i not "%System%"=="S:" goto "WindowsCheck"
if not exist "T:" if /i not "%System%"=="T:" set Windows=T:
if not exist "T:" if /i not "%System%"=="T:" goto "WindowsCheck"
if not exist "U:" if /i not "%System%"=="U:" set Windows=U:
if not exist "U:" if /i not "%System%"=="U:" goto "WindowsCheck"
if not exist "V:" if /i not "%System%"=="V:" set Windows=V:
if not exist "V:" if /i not "%System%"=="V:" goto "WindowsCheck"
if not exist "W:" if /i not "%System%"=="W:" set Windows=W:
if not exist "W:" if /i not "%System%"=="W:" goto "WindowsCheck"
if not exist "X:" if /i not "%System%"=="X:" set Windows=X:
if not exist "X:" if /i not "%System%"=="X:" goto "WindowsCheck"
if not exist "Y:" if /i not "%System%"=="Y:" set Windows=Y:
if not exist "Y:" if /i not "%System%"=="Y:" goto "WindowsCheck"
if not exist "Z:" if /i not "%System%"=="Z:" set Windows=Z:
if not exist "Z:" if /i not "%System%"=="Z:" goto "WindowsCheck"
set DriveLettersUnavailable=True
echo Only 1 drive letter is available! Please unmount 2 drives and then press any key to try again.
pause > nul 2>&1
goto "Windows"

:"WindowsCheck"
if /i "%WindowsType%"=="1" goto "RecoveryDriveLetter"
if /i "%WindowsType%"=="2" goto "AvailableDriveLettersFound"

:"RecoveryDriveLetter"
if /i "%DriveLettersUnavailable%"=="True" echo.
if /i "%DriveLettersUnavailable%"=="True" echo Finding an available drive letter.
set DriveLettersUnavailable=
if not exist "A:" if /i not "%System%"=="A:" if /i not "%Windows%"=="A:" set Recovery=A:
if not exist "A:" if /i not "%System%"=="A:" if /i not "%Windows%"=="A:" goto "AvailableDriveLettersFound"
if not exist "B:" if /i not "%System%"=="B:" if /i not "%Windows%"=="B:" set Recovery=B:
if not exist "B:" if /i not "%System%"=="B:" if /i not "%Windows%"=="B:" goto "AvailableDriveLettersFound"
if not exist "C:" if /i not "%System%"=="C:" if /i not "%Windows%"=="C:" set Recovery=C:
if not exist "C:" if /i not "%System%"=="C:" if /i not "%Windows%"=="C:" goto "AvailableDriveLettersFound"
if not exist "D:" if /i not "%System%"=="D:" if /i not "%Windows%"=="D:" set Recovery=D:
if not exist "D:" if /i not "%System%"=="D:" if /i not "%Windows%"=="D:" goto "AvailableDriveLettersFound"
if not exist "E:" if /i not "%System%"=="E:" if /i not "%Windows%"=="E:" set Recovery=E:
if not exist "E:" if /i not "%System%"=="E:" if /i not "%Windows%"=="E:" goto "AvailableDriveLettersFound"
if not exist "F:" if /i not "%System%"=="F:" if /i not "%Windows%"=="F:" set Recovery=F:
if not exist "F:" if /i not "%System%"=="F:" if /i not "%Windows%"=="F:" goto "AvailableDriveLettersFound"
if not exist "G:" if /i not "%System%"=="G:" if /i not "%Windows%"=="G:" set Recovery=G:
if not exist "G:" if /i not "%System%"=="G:" if /i not "%Windows%"=="G:" goto "AvailableDriveLettersFound"
if not exist "H:" if /i not "%System%"=="H:" if /i not "%Windows%"=="H:" set Recovery=H:
if not exist "H:" if /i not "%System%"=="H:" if /i not "%Windows%"=="H:" goto "AvailableDriveLettersFound"
if not exist "I:" if /i not "%System%"=="I:" if /i not "%Windows%"=="I:" set Recovery=I:
if not exist "I:" if /i not "%System%"=="I:" if /i not "%Windows%"=="I:" goto "AvailableDriveLettersFound"
if not exist "J:" if /i not "%System%"=="J:" if /i not "%Windows%"=="J:" set Recovery=J:
if not exist "J:" if /i not "%System%"=="J:" if /i not "%Windows%"=="J:" goto "AvailableDriveLettersFound"
if not exist "K:" if /i not "%System%"=="K:" if /i not "%Windows%"=="K:" set Recovery=K:
if not exist "K:" if /i not "%System%"=="K:" if /i not "%Windows%"=="K:" goto "AvailableDriveLettersFound"
if not exist "L:" if /i not "%System%"=="L:" if /i not "%Windows%"=="L:" set Recovery=L:
if not exist "L:" if /i not "%System%"=="L:" if /i not "%Windows%"=="L:" goto "AvailableDriveLettersFound"
if not exist "M:" if /i not "%System%"=="M:" if /i not "%Windows%"=="M:" set Recovery=M:
if not exist "M:" if /i not "%System%"=="M:" if /i not "%Windows%"=="M:" goto "AvailableDriveLettersFound"
if not exist "N:" if /i not "%System%"=="N:" if /i not "%Windows%"=="N:" set Recovery=N:
if not exist "N:" if /i not "%System%"=="N:" if /i not "%Windows%"=="N:" goto "AvailableDriveLettersFound"
if not exist "O:" if /i not "%System%"=="O:" if /i not "%Windows%"=="O:" set Recovery=O:
if not exist "O:" if /i not "%System%"=="O:" if /i not "%Windows%"=="O:" goto "AvailableDriveLettersFound"
if not exist "P:" if /i not "%System%"=="P:" if /i not "%Windows%"=="P:" set Recovery=P:
if not exist "P:" if /i not "%System%"=="P:" if /i not "%Windows%"=="P:" goto "AvailableDriveLettersFound"
if not exist "Q:" if /i not "%System%"=="Q:" if /i not "%Windows%"=="Q:" set Recovery=Q:
if not exist "Q:" if /i not "%System%"=="Q:" if /i not "%Windows%"=="Q:" goto "AvailableDriveLettersFound"
if not exist "R:" if /i not "%System%"=="R:" if /i not "%Windows%"=="R:" set Recovery=R:
if not exist "R:" if /i not "%System%"=="R:" if /i not "%Windows%"=="R:" goto "AvailableDriveLettersFound"
if not exist "S:" if /i not "%System%"=="S:" if /i not "%Windows%"=="S:" set Recovery=S:
if not exist "S:" if /i not "%System%"=="S:" if /i not "%Windows%"=="S:" goto "AvailableDriveLettersFound"
if not exist "T:" if /i not "%System%"=="T:" if /i not "%Windows%"=="T:" set Recovery=T:
if not exist "T:" if /i not "%System%"=="T:" if /i not "%Windows%"=="T:" goto "AvailableDriveLettersFound"
if not exist "U:" if /i not "%System%"=="U:" if /i not "%Windows%"=="U:" set Recovery=U:
if not exist "U:" if /i not "%System%"=="U:" if /i not "%Windows%"=="U:" goto "AvailableDriveLettersFound"
if not exist "V:" if /i not "%System%"=="V:" if /i not "%Windows%"=="V:" set Recovery=V:
if not exist "V:" if /i not "%System%"=="V:" if /i not "%Windows%"=="V:" goto "AvailableDriveLettersFound"
if not exist "W:" if /i not "%System%"=="W:" if /i not "%Windows%"=="W:" set Recovery=W:
if not exist "W:" if /i not "%System%"=="W:" if /i not "%Windows%"=="W:" goto "AvailableDriveLettersFound"
if not exist "X:" if /i not "%System%"=="X:" if /i not "%Windows%"=="X:" set Recovery=X:
if not exist "X:" if /i not "%System%"=="X:" if /i not "%Windows%"=="X:" goto "AvailableDriveLettersFound"
if not exist "Y:" if /i not "%System%"=="Y:" if /i not "%Windows%"=="Y:" set Recovery=Y:
if not exist "Y:" if /i not "%System%"=="Y:" if /i not "%Windows%"=="Y:" goto "AvailableDriveLettersFound"
if not exist "Z:" if /i not "%System%"=="Z:" if /i not "%Windows%"=="Z:" set Recovery=Z:
if not exist "Z:" if /i not "%System%"=="Z:" if /i not "%Windows%"=="Z:" goto "AvailableDriveLettersFound"
set DriveLettersUnavailable=True
echo Only 2 drive letters are available! Please unmount 1 drive and then press any key to try again.
pause > nul 2>&1
goto "RecoveryDriveLetter"

:"AvailableDriveLettersFound"
echo Available drive letters found.
if /i "%WindowsType%"=="1" goto "fsutilCheck"
if /i "%WindowsType%"=="2" goto "DiskPartWindowsToGo"

:"fsutilCheck"
if "%BIOSType%"=="2" goto "fsutil"
goto "DiskPartWindows"

:"fsutil"
if exist "fsutil.txt" goto "fsutilExist"
echo.
echo Getting disk %Disk% details.
"%windir%\System32\fsutil.exe" fsinfo sectorinfo \\.\PhysicalDrive%Disk% | "%windir%\System32\find.exe" /i /c "PhysicalBytesPerSectorForAtomicity :                    4096" > "fsutil.txt"
set /p fsutil=< "fsutil.txt"
echo Got disk %Disk% details.
del "fsutil.txt" /f /q > nul 2>&1
if /i "%fsutil%"=="True" goto "fsutilDone"
goto "DiskPartWindows"

:"fsutilExist"
set fsutil=True
echo.
echo Please temporarily rename to something else or temporarily move to another location "fsutil.txt" in order for this batch file to proceed. "fsutil.txt" is not a system file. "fsutil.txt" is located in the folder "%cd%". Press any key to continue when "fsutil.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
pause > nul 2>&1
goto "fsutil"

:"fsutilDone"
echo.
echo You can now rename or move the file back to "fsutil.txt". Press any key to continue.
pause > nul 2>&1
goto "DiskPartWindows"

:"DiskPartWindows"
if exist "diskpart.txt" goto "DiskPartExistDiskPartWindows"
echo.
echo Partitioning and formatting disk %Disk%.
(echo automount scrub) > "diskpart.txt"
(echo select disk %Disk%) >> "diskpart.txt"
(echo clean) >> "diskpart.txt"
if /i "%BIOSType%"=="1" (echo convert mbr) >> "diskpart.txt"
if /i "%BIOSType%"=="2" (echo convert gpt) >> "diskpart.txt"
if /i "%BIOSType%"=="3" (echo convert mbr) >> "diskpart.txt"
if /i "%BIOSType%"=="1" (echo create partition primary size=100) >> "diskpart.txt"
if /i "%BIOSType%"=="2" if /i "%fsutil%"=="0" (echo create partition efi size=100) >> "diskpart.txt"
if /i "%BIOSType%"=="2" if /i "%fsutil%"=="1" (echo create partition efi size=260) >> "diskpart.txt"
if /i "%BIOSType%"=="3" (echo create partition primary size=100) >> "diskpart.txt"
if /i "%BIOSType%"=="1" (echo format quick fs=ntfs label="System" override) >> "diskpart.txt"
if /i "%BIOSType%"=="2" (echo format quick fs=fat32 label="System" override) >> "diskpart.txt"
if /i "%BIOSType%"=="3" (echo format quick fs=fat32 label="System" override) >> "diskpart.txt"
(echo assign letter="%System%") >> "diskpart.txt"
if /i "%BIOSType%"=="1" (echo active) >> "diskpart.txt"
if /i "%BIOSType%"=="3" (echo active) >> "diskpart.txt"
if /i "%BIOSType%"=="2" (echo create partition msr size=16) >> "diskpart.txt"
(echo create partition primary) >> "diskpart.txt"
(echo shrink minimum=990) >> "diskpart.txt"
(echo format quick fs=ntfs label="Windows" override) >> "diskpart.txt"
(echo assign letter="%Windows%") >> "diskpart.txt"
(echo create partition primary) >> "diskpart.txt"
(echo format quick fs=ntfs label="Recovery" override) >> "diskpart.txt"
(echo assign letter="%Recovery%") >> "diskpart.txt"
if /i "%BIOSType%"=="1" (echo set id=27 override) >> "diskpart.txt"
if /i "%BIOSType%"=="2" (echo set id="de94bba4-06d1-4d40-a16a-bfd50179d6ac" override) >> "diskpart.txt"
if /i "%BIOSType%"=="3" (echo set id=27 override) >> "diskpart.txt"
if /i "%BIOSType%"=="2" (echo gpt attributes=0x8000000000000001) >> "diskpart.txt"
(echo exit) >> "diskpart.txt"
"%windir%\System32\diskpart.exe" /s "diskpart.txt" > nul 2>&1
if not "%errorlevel%"=="0" goto "DiskPartWindowsError"
del "diskpart.txt" /f /q > nul 2>&1
echo Disk %Disk% partitioned and formatted.
goto "DISM2"

:"DiskPartExistDiskDiskPartWindows"
set DiskPart=True
echo.
echo Please temporarily rename to something else or temporarily move to another location "diskpart.txt" in order for this batch file to proceed. "diskpart.txt" is not a system file. "diskpart.txt" is located in the folder "%cd%". Press any key to continue when "diskpart.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
pause > nul 2>&1
goto "DiskPartWindows"

:"DiskPartWindowsError"
del "diskpart.txt" /f /q > nul 2>&1
echo Error formatting and partitioning disk %Disk%. Disk %Disk% may not exist! Disk %Disk% may be smaller than 64 GB! Press any key to try again.
pause > nul 2>&1
goto "Disk"

:"DiskPartWindowsToGo"
if exist "diskpart.txt" goto "DiskPartExistDiskPartWindowsToGo"
echo.
echo Partitioning and formatting disk %Disk%.
(echo automount scrub) > "diskpart.txt"
(echo sel disk %Disk%) >> "diskpart.txt"
(echo clean) >> "diskpart.txt"
if /i "%BIOSType%"=="3" (echo convert mbr) >> "diskpart.txt"
if /i "%BIOSType%"=="2" (echo convert gpt) >> "diskpart.txt"
if /i "%BIOSType%"=="3" (echo create partition primary size=350) >> "diskpart.txt"
if /i "%BIOSType%"=="2" (echo create partition efi size=350) >> "diskpart.txt"
(echo format fs=fat32 label="WTG-System" quick) >> "diskpart.txt"
(echo assign letter=%System%) >> "diskpart.txt"
if /i "%BIOSType%"=="3" (echo active) >> "diskpart.txt"
(echo create partition primary) >> "diskpart.txt"
(echo format fs=NTFS label="WTG-Windows" quick) >> "diskpart.txt"
(echo assign letter=%Windows%) >> "diskpart.txt"
(echo attributes vol set nodefaultdriveletter) >> "diskpart.txt"
(echo exit) >> "diskpart.txt"
"%windir%\System32\diskpart.exe" /s "diskpart.txt" > nul 2>&1
if not "%errorlevel%"=="0" goto "DiskPartWindowsToGoError"
del "diskpart.txt" /f /q > nul 2>&1
echo Disk %Disk% partitioned and formatted.
goto "DISM2"

:"DiskPartExistDiskPartWindowsToGo"
set DiskPart=True
echo.
echo Please temporarily rename to something else or temporarily move to another location "diskpart.txt" in order for this batch file to proceed. "diskpart.txt" is not a system file. "diskpart.txt" is located in the folder "%cd%". Press any key to continue when "diskpart.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
pause > nul 2>&1
goto "DiskPartWindowsToGo"

:"DiskPartWindowsToGoError"
del "diskpart.txt" /f /q > nul 2>&1
echo Error formatting and partitioning disk %Disk%. Disk %Disk% may not exist! Disk %Disk% may be smaller than 64 GB! Press any key to try again.
pause > nul 2>&1
goto "Disk"

:"DISM2"
echo.
if /i "%WindowsType%"=="1" echo Installing Windows.
if /i "%WindowsType%"=="2" echo Installing Windows To Go.
"%windir%\System32\Dism.exe" /Apply-Image /ImageFile:"%Sources%\%Install%" /Index:%Index% /ApplyDir:"%Windows%"
if not "%errorlevel%"=="0" goto "BitDetection"
if /i "%WindowsType%"=="1" echo Windows installed.
if /i "%WindowsType%"=="2" echo Windows To Go installed.
goto "Bootloader"

:"Bootloader"
echo.
echo Creating bootloader.
if /i "%BIOSType%"=="1" "%windir%\System32\bcdboot.exe" "%Windows%\Windows" /s "%System%" /f BIOS > nul 2>&1
if /i "%BIOSType%"=="2" "%windir%\System32\bcdboot.exe" "%Windows%\Windows" /s "%System%" /f UEFI > nul 2>&1
if /i "%BIOSType%"=="3" "%windir%\System32\bcdboot.exe" "%Windows%\Windows" /s "%System%" /f ALL > nul 2>&1
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
echo Please temporarily rename to something else or temporarily move to another location "diskpart.txt" in order for this batch file to proceed. "diskpart.txt" is not a system file. "diskpart.txt" is located in the folder "%cd%". Press any key to continue when "diskpart.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
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
if /i "%BIOSType%"=="1" goto "DoneBIOS"
if /i "%BIOSType%"=="2" goto "DoneUEFIWindows"
if /i "%BIOSType%"=="3" goto "DoneBothWindows"

:"DiskPartExistRecovery"
set DiskPart=True
echo Please temporarily rename to something else or temporarily move to another location "diskpart.txt" in order for this batch file to proceed. "diskpart.txt" is not a system file. "diskpart.txt" is located in the folder "%cd%". Press any key to continue when "diskpart.txt" is renamed to something else or moved to another location. This batch file will let you know when you can rename it back to its original name or move it back to its original location.
pause > nul 2>&1
goto "DiskPartRecovery"

:"DiskPartDone"
echo.
echo You can now rename or move the file back to "diskpart.txt". Press any key to continue.
pause > nul 2>&1
if /i "%WindowsType%"=="2" goto "SANPolicy"
if /i "%BIOSType%"=="1" goto "DoneBIOS"
if /i "%BIOSType%"=="2" goto "DoneUEFIWindows"
if /i "%BIOSType%"=="3" goto "DoneBothWindows"

:"SANPolicy"
echo.
echo Applying SAN policy.
(echo ^<?xml version="1.0" encoding="utf-8" standalone="yes"?^>) > "%Windows%\san_policy.xml"
(echo ^<unattend xmlns="urn:schemas-microsoft-com:unattend"^>) >> "%Windows%\san_policy.xml"
(echo   ^<settings pass="offlineServicing"^>) >> "%Windows%\san_policy.xml"
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
(echo         processorArchitecture="arm64") >> "%Windows%\san_policy.xml"
(echo         publicKeyToken="31bf3856ad364e35") >> "%Windows%\san_policy.xml"
(echo         versionScope="nonSxS") >> "%Windows%\san_policy.xml"
(echo         ^>) >> "%Windows%\san_policy.xml"
(echo       ^<SanPolicy^>4^</SanPolicy^>) >> "%Windows%\san_policy.xml"
(echo     ^</component^>) >> "%Windows%\san_policy.xml"
(echo   ^</settings^>) >> "%Windows%\san_policy.xml"
(echo ^</unattend^>) >> "%Windows%\san_policy.xml"
"%windir%\System32\Dism.exe" /Image:"%Windows%" /Apply-Unattend:"%Windows%\san_policy.xml"
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
(echo ^<?xml version="1.0" encoding="utf-8"?^>) > "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo ^<unattend xmlns="urn:schemas-microsoft-com:unattend"^>) >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo     ^<settings pass="oobeSystem"^>) >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo         ^<component name="Microsoft-Windows-WinRE-RecoveryAgent") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           processorArchitecture="x86") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           publicKeyToken="31bf3856ad364e35" language="neutral") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           versionScope="nonSxS") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>) >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo             ^<UninstallWindowsRE^>true^</UninstallWindowsRE^>) >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo         ^</component^>) >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo        ^<component name="Microsoft-Windows-WinRE-RecoveryAgent") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           processorArchitecture="amd64") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           publicKeyToken="31bf3856ad364e35" language="neutral") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           versionScope="nonSxS") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>) >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo             ^<UninstallWindowsRE^>true^</UninstallWindowsRE^>) >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo         ^</component^>) >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo        ^<component name="Microsoft-Windows-WinRE-RecoveryAgent") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           processorArchitecture="arm64") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           publicKeyToken="31bf3856ad364e35" language="neutral") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           versionScope="nonSxS") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           xmlns:wcm="http://schemas.microsoft.com/WMIConfig/2002/State") >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo           xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"^>) >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo             ^<UninstallWindowsRE^>true^</UninstallWindowsRE^>) >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo         ^</component^>) >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo     ^</settings^>) >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
(echo ^</unattend^>) >> "%Windows%\Windows\System32\Sysprep\unattend.xml"
echo "unattended.xml" file created in Sysprep folder.
if /i "%BIOSType%"=="2" goto "DoneUEFIWindowsToGo"
goto "DoneBothWindowsToGo"

:"DoneBIOS"
endlocal
echo.
echo Your Windows is ready! It is bootable with legacy BIOS only. Press any key to close this batch file.
pause > nul 2>&1
exit

:"DoneUEFIWindows"
endlocal
echo.
echo Your Windows is ready! It is bootable with UEFI only. Press any key to close this batch file.
pause > nul 2>&1
exit

:"DoneUEFIWindowsToGo"
endlocal
echo.
echo Your Windows To Go is ready! It is bootable with UEFI only. Press any key to close this batch file.
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
