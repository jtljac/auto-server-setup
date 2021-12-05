if not exist steamcmd/ mkdir steamcmd
if not exist steamcmd/steamcmd.exe (
    cd steamcmd
    powershell -Command "Invoke-WebRequest https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip -OutFile steamcmd.zip"
    powershell -Command "Expand-Archive -Force ./steamcmd.zip ./"
    cd ../
)

"./steamcmd/steamcmd.exe" +login anonymous +force_install_dir "../garrysmod" +app_update 4020 +quit
"./steamcmd/steamcmd.exe" +login anonymous +force_install_dir "../cstrike" +app_update 232330 +quit


if not exist garrysmod/cstrike/ mklink /J "./garrysmod/cstrike/" "./cstrike/cstrike/"

pause