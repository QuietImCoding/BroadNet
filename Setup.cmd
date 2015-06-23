@echo off

set SCRIPT="%TEMP%\%RANDOM%-%RANDOM%-%RANDOM%-%RANDOM%.vbs"

echo Set oWS = WScript.CreateObject("WScript.Shell") >> %SCRIPT%
echo sLinkFile = "%USERPROFILE%\Desktop\BroadNet.lnk" >> %SCRIPT%
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> %SCRIPT%
echo oLink.TargetPath = "%USERPROFILE%\Downloads\BroadNet\broadnet.hta" >> %SCRIPT%
echo oLink.IconLocation = "%USERPROFILE%\Downloads\BroadNet\resources\wifi.ico" >> %SCRIPT%
echo oLink.WorkingDirectory = "%USERPROFILE%\Downloads\BroadNet" >> %SCRIPT%
echo oLink.Save >> %SCRIPT%

cscript /nologo %SCRIPT%
del %SCRIPT%