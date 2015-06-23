@ECHO OFF
del C:\Windows\System32\host.cmd > NUL	
echo Successfully removed host command!
del C:\Windows\System32\sudo.cmd > NUL
echo Successfully removed sudo command!
echo blankline > NUL

echo Uninstall Complete!!
echo Delete this folder to finish uninstallation
timeout /t 3 /nobreak > NUL
exit