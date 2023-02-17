::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdAfNDEmXrg1/Kx9aAgCLL2i1FLEd+Pi17OWK7UwJQOM8cILe1KCdb7dHvRG0JMF8hi0JypNfWkMBK136Plhi+zoa5jPTZpfK4Fu3Hx3fqW4zE2pLtGvRni8ESvY5peEmgm2BrXKxlqYfsQ==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJhZko0
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQIkLQNAWRaHLGq5DfUP7fzu//qCsC0=
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFDJ5YSWsAES0A5EO4f7+08iOrkkYRt4ZfYrf2LWNK9wH713wYIQoxntZk9gJGA5IMBeza28=
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
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

if "%version%" == "1.20" (
    set pack_format=12
) else if "%version%" == "1.19.3" (
    set pack_format=11
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

