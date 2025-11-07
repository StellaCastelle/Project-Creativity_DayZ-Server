@echo off
cls

set watch=DayZ Server

title %watch% Watchdog

cd "C:\Program Files (x86)\Steam\steamapps\common\DayZServer"

:watchdog
echo (%time%) %watch% started.
start "DayZ Server" /wait "DayZServer_x64.exe" -adminlog -netlog -freezecheck -showScriptErrors VerifySignatures=3; -profiles=config -config=serverDZ.cfg -port=2302 -dologs "-mod=@CF;@Dabs Framework;@ZomBerry Admin Tools;@VPPAdminTools;@VPP Admin Tools Fix;@Aerial-Flares;@AmmoStackBullet;@AutoRun;"
echo (%time%) %watch% closed or crashed, restarting.
goto watchdog
-profiles=C:\Steam\steamapps\common\DayZServer\log -scrAllowFileWrite -dologs -adminlog