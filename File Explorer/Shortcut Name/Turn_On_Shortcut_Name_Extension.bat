@echo off

:: Created by: Shawn Brink
:: http://www.tenforums.com/
:: Tutorial: https://www.tenforums.com/tutorials/4663-shortcut-name-extension-turn-off-windows-10-a.html


REG ADD "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V link /T REG_Binary /D 15000000 /F

Reg Delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\NamingTemplates" /V ShortcutNameTemplate /F


:: To kill and restart explorer
taskkill /f /im explorer.exe
start explorer.exe