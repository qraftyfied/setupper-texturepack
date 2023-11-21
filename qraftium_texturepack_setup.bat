@echo off
echo TEXTUREPACK SETUP by qrafty#1569

set /p foldername="DEFINE THE NAME OF YOUR TEXTUREPACK: "
set /p version="CHOOSE THE RIGHT MINECRAFT VERSION: "

if not exist "%userprofile%\Downloads\%foldername%" (
    mkdir "%userprofile%\Downloads\%foldername%"
    mkdir "%userprofile%\Downloads\%foldername%\assets"
    mkdir "%userprofile%\Downloads\%foldername%\assets\minecraft"
    echo CREATED FILE SYSTEM!
) else (
    echo PACK NAME ALREADY EXISTS. CHOOSE ANOTHER ONE.
)

if "%version%" == "1.20.2" (
    set pack_format=18
) else if "%version%" == "1.20" (
    set pack_format=15
) else if "%version%" == "1.19.4" (
    set pack_format=13
) else if "%version%" == "1.19.3" (
    set pack_format=12
) else if "%version%" == "1.19" (
    set pack_format=10
) else if "%version%" == "1.18" (
    set pack_format=8
) else if "%version%" == "1.17" (
    set pack_format=7
) else if "%version%" == "1.16" (
    set pack_format=6
) else if "%version%" == "1.15" (
    set pack_format=5
) else if "%version%" == "1.14" (
    set pack_format=4
) else if "%version%" == "1.13" (
    set pack_format=4
) else if "%version%" == "1.12" (
    set pack_format=3
) else if "%version%" == "1.11" (
    set pack_format=3
) else if "%version%" == "1.10" (
    set pack_format=2
) else if "%version%" == "1.9" (
    set pack_format=2
) else if "%version%" == "1.8" (
    set pack_format=1
) else (
    set pack_format=1
    echo CURRENTLY UNKNOWN MC VERSION. PACK FORMAT WAS SET TO 1.
)

set /p pack_description="FIND A DESCRIPTION FOR YOUR PACK: "
echo { "pack": { "pack_format": %pack_format%, "description": "%pack_description%" } } > "%userprofile%\Downloads\%foldername%\pack.mcmeta"
echo pack.mcmeta FILE WAS CREATED!

echo.
echo BASE PACK SAVED TO C:\DOWNLOADS! GET SUPPORT: qrafty.net/discord

pause

