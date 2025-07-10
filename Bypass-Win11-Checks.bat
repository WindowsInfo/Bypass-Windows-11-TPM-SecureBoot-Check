@echo off
title 🛠️ Bypass Windows 11 Requirements - Safe Registry Tweaks
color 0A

echo ====================================================
echo     Windows 11 Bypass Script (TPM, RAM, Secure Boot)
echo ====================================================
echo.

echo ➤ Adding Registry keys to skip hardware checks...

reg add "HKLM\SYSTEM\Setup\LabConfig" /v BypassTPMCheck /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\Setup\LabConfig" /v BypassSecureBootCheck /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\Setup\LabConfig" /v BypassRAMCheck /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\Setup\LabConfig" /v BypassCPUCheck /t REG_DWORD /d 1 /f
reg add "HKLM\SYSTEM\Setup\LabConfig" /v BypassStorageCheck /t REG_DWORD /d 1 /f

echo.
echo ✅ Success: Windows 11 setup bypasses applied.
echo 🔁 Restart and run setup to install on unsupported PC.
pause
