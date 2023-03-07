dsregcmd /leave

dsregcmd /status

timeout 2

echo off
set /p newDeviceHostname="Insert hostname: "
wmic computersystem where name="%computername%" call rename name=%newDeviceHostname%

dsregcmd /join

echo "Restart in 5 seconds

timeout 5

shutdown -r -t 0