call "./Setup SteamCMD.bat"

"./steamcmd/steamcmd.exe" +login anonymous +force_install_dir "../pzserver" +app_update 380870 +quit
