call "Setup CMD.bat"

"./steamcmd/steamcmd.exe" +login anonymous +force_install_dir "../garrysmod" +app_update 4020 +quit
"./steamcmd/steamcmd.exe" +login anonymous +force_install_dir "../cstrike" +app_update 232330 +quit


if not exist garrysmod/cstrike/ mklink /J "./garrysmod/cstrike/" "./cstrike/cstrike/"