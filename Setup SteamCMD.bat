if not exist steamcmd/ mkdir steamcmd
if not exist steamcmd/steamcmd.exe (
    cd steamcmd
    powershell -Command "Invoke-WebRequest https://steamcdn-a.akamaihd.net/client/installer/steamcmd.zip -OutFile steamcmd.zip"
    powershell -Command "Expand-Archive -Force ./steamcmd.zip ./"
    cd ../
)