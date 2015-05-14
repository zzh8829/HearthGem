@echo off

if "%1" == "" goto :load
if "%1" == "u" goto :unload

:load
echo Loading
mono-assembly-injector -dll HearthGem/bin/Debug/HearthGem.dll -target HearthStone.exe -namespace HearthGem -class HearthGemLoader -method Load
goto :end

:unload
echo Unloading
mono-assembly-injector -dll HearthGem/bin/Debug/HearthGem.dll -target HearthStone.exe -namespace HearthGem -class HearthGemLoader -method UnLoad
goto end

:end
