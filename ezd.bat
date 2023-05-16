@echo off
# ALL RIGHTS RESERVED - Vili (https://vili.dev)

:start
cls
title "ez'd ~~~vili.dev"
echo
echo
echo "Welcome to Ez'd utility tool"
echo "Easy way to gather useful information about your current Windows device."
echo
echo
echo "Starting in 3 seconds..."
timeout /t 3 /nobreak
echo "Checking for users"
net users > users.txt
echo
echo "Done, next check in 3 secs..."
timeout /t 3 /nobreak
echo "Checking for local groups"
net localgroup > groups.txt
echo
echo "Done, next check in 3 secs..."
timeout /t 3 /nobreak
echo "Checking for applied policies"
gpresult /Scope User /v > policies.txt
echo
echo "Done, next check in 3 secs..."
timeout /t 3 /nobreak
echo "Checking for saved connections"
netsh wlan show all > networks.txt

set /p input= "Press ENTER to exit."
:exit
