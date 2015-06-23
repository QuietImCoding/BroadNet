@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
netsh wlan set hostednetwork mode=allow ssid=%1 key=%2
netsh wlan start hostednetwork 
echo Hosted Network Started!
echo SSID: %1
echo KEY: %2
echo null > NUL
IF "%3" NEQ "" (
	timeout -t %3 /nobreak
	netsh wlan stop hostednetwork 
)
exit
