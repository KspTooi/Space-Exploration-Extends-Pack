echo off



set buildTarget="C:\Users\Administrator\AppData\Roaming\Factorio\mods\ksptooi-server-commons-preprocess_1.4.50"
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



