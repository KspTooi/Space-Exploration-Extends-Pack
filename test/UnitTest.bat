echo off

@REM taskkill /f /t /im factorio.exe

set buildTarget="C:\InternalApps\Lua"
set projectPath="C:\AreaDev\ksptooi-server-commons-preprocess\modules\AspectCommonService"
set gamePath = "C:\InternalGames\Steam\steamapps\common\Factorio\bin\x64\factorio.exe"

@REM del /F /S /Q %buildTarget%


xcopy /s /y %projectPath% %buildTarget%
del /F /S /Q "%buildTarget%/.git"
del /F /S /Q "%buildTarget%/.idea"
echo 构建完成
echo 构建完成
echo 构建完成

@REM start C:\InternalGames\Steam\steamapps\common\Factorio\bin\x64\factorio.exe
