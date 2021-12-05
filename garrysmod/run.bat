@echo off
if "%STEAMWEBAPIKEY"=="" (
    echo "You can get your Steam Web API Key from https://steamcommunity.com/dev/apikey"
    set /p apikey="Enter Steam WebAPI Key: "
) else (
    set apikey = "%STEAMWEBAPIKEY%"
)

start /wait srcds.exe -console -game garrysmod -tickrate 60 +map ttt_minecraft_b5 +maxplayers 16 +gamemode terrortown +host_workshop_collection 1354895497 -authkey %apikey%