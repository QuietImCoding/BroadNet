@ECHO OFF

copy "%1\Downloads\Broadnet\resources\sudo.cmd" "C:\Windows\System32\sudo.cmd" > NUL
echo Sudo command written successfully
copy "%1\Downloads\Broadnet\resources\host.cmd" "C:\Windows\System32\host.cmd" > NUL
echo Host command written successfully
echo newline > NUL

echo Installation Successful!!
timeout /t 3 /nobreak > NUL
exit

