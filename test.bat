echo off



set buildTarget="C:\Users\Administrator\AppData\Roaming\Factorio\mods\ksptooi-server-commons-preprocess_1.4.31"
set projectPath="C:\InternalDeveloper\Lua\ksptooi-server-commons-preprocess"

del /F /S /Q %buildTarget%


xcopy /s /y %projectPath% %buildTarget%
del /F /S /Q "%buildTarget%/.git"
del /F /S /Q "%buildTarget%/.idea"
echo 构建完成
echo 构建完成
echo 构建完成
pause

