echo off

taskkill /f /t /im factorio.exe

set buildTarget="C:\Users\Administrator\AppData\Roaming\Factorio\mods\uu-matter_1.5.5"
set projectPath="C:\InternalDeveloper\Lua\ksptooi-server-commons-preprocess"
set gamePath = "C:\InternalGames\Steam\steamapps\common\Factorio\bin\x64\factorio.exe"

del /F /S /Q %buildTarget%

xcopy /s /y %projectPath% %buildTarget%
del /F /S /Q "%buildTarget%/.git"
del /F /S /Q "%buildTarget%/.idea"
echo �������
echo �������
echo �������

start C:\InternalGames\Steam\steamapps\common\Factorio\bin\x64\factorio.exe