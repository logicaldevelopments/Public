@echo off
REM Set short Date Format
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sShortDate" /d "MM/dd/yyyy" /t REG_SZ /f

REM Set long Date Format
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sLongDate" /d "MMMM d, yyyy" /t REG_SZ /f

REM Set Country Location as Canada
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "sCountry" /d "Canada" /t REG_SZ /f

REM Set Locale Name as Canada
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "LocaleName" /d "en-CA" /t REG_SZ /f

REM Set Measurement System (0 - Metric) (1 - U.S)
reg add "HKEY_CURRENT_USER\Control Panel\International" /v "iMeasure" /d "1" /t REG_SZ /f

REM Set Control Panel to show Small Icons
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "AllItemsIconView" /d "1" /t REG_DWord /f
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ControlPanel" /v "StartupPage" /d "1" /t REG_DWord /f

REM Unhide Known File Extensions
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /d "0" /t REG_DWord /f

REM Set Small Taskbar Icons
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarSmallIcons" /d "1" /t REG_DWord /f

REM Hide Volume Icon from Notification Bar
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /f
reg add "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer" /v "HideSCAVolume" /d "1" /t REG_DWord /f
