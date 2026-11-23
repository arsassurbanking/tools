:: SCRIPT POWERED BY EMANUELE CALDAROLA ######
:: mailto: emanuele87c@gmail.com #############

:: ######## TO DOWNLOAD USING CURL ###########
:: curl -L winget.arsassurbanking.com > wi.bat

ECHO off
CLS

openfiles >nul 2>&1
if %errorlevel% neq 0 (
    powershell -Command "Start-Process cmd -ArgumentList '/c %~f0' -Verb RunAs"
    exit /b
)

TITLE Winget Install Pack
COLOR 2
CLS

:: SET PACK
SET Pack=Google.Chrome 7zip.7zip Ookla.Speedtest.CLI

:: SET CUSTOM PACK
CHOICE /M "Install GOOGLE DRIVE: "
IF %errorlevel%==1 set Pack=%Pack% Google.GoogleDrive

CHOICE /M "Install DROPBOX: "
IF %errorlevel%==1 set Pack=%Pack% Dropbox.Dropbox

CHOICE /M "Install MOZILLA THUNDERBIRD: "
IF %errorlevel%==1 set Pack=%Pack% Mozilla.Thunderbird.it

CHOICE /M "Install ACROBAT READER: "
IF %errorlevel%==1 set Pack=%Pack% Adobe.Acrobat.Reader.64-bit

CHOICE /M "Install PDF24: "
IF %errorlevel%==1 set Pack=%Pack% geeksoftwareGmbH.PDF24Creator

CHOICE /M "Install NOTEPAD++: "
IF %errorlevel%==1 set Pack=%Pack% Notepad++.Notepad++

CHOICE /M "Install ESHARE ! Lavagna Ricoh: "
IF %errorlevel%==1 set Pack=%Pack% 9N69B07TNQ5C

CHOICE /M "Install MICROSOFT POWERTOYS: "
IF %errorlevel%==1 set Pack=%Pack% Microsoft.PowerToys

CHOICE /M "Install WIN SCP: "
IF %errorlevel%==1 set Pack=%Pack% WinSCP.WinSCP

CHOICE /M "Install K-LITE CODEC PACK: "
IF %errorlevel%==1 set Pack=%Pack% CodecGuide.K-LiteCodecPack.Full

:: CHOICE /M "Install XXX: "
:: %errorlevel%==1 set Pack=%Pack% XXX

:: CONFIRMATION PROMPT
CLS
COLOR 6
ECHO Custom Pack: 
ECHO %Pack%
ECHO.
CHOICE /c iq /m "Press 'i' to install or 'q' to quit: "
CLS
if %errorlevel%==1 (
    echo ### START PACK INSTALL ###
) else if %errorlevel%==2 (
    GOTO AUTOREMOVE_PROMPT
)

:: WINGET INSTALL START
WINGET install %Pack%

:AUTOREMOVE_PROMPT
ECHO.
CHOICE /M "Delete Script Batch: "
IF %errorlevel%==1 del %0



:: SCRIPT POWERED BY EMANUELE CALDAROLA ######
:: mailto: emanuele87c@gmail.com #############

:: ######## TO DOWNLOAD USING CURL ###########
:: curl -L winget.arsassurbanking.com > wi.bat
