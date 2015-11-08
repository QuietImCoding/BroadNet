@ECHO OFF
SETLOCAL ENABLEEXTENSIONS
netsh wlan set hostednetwork mode=allow ssid=%1 key=%2
echo SSID: %1
echo KEY: %2
IF "%3" NEQ "" (
	timeout -t %3 /nobreak
	netsh wlan stop hostednetwork 
)