@echo off

if "%1" == "" goto noargerror

echo [Asm] Initing new assembly workspace at %1

mkdir %1
cd %1
mkdir bin
mkdir .vscode
cd ..

if errorlevel 1 goto patherror

copy %~dp0workspace %1
copy %~dp0workspace\bin %1\bin

rem copy files
set strpath=%~dp0
set strpath=%strpath:\=\\%

rem vscode path setting
echo {                                                       > %1\.vscode\settings.json
echo     "terminal.integrated.env.windows": {               >> %1\.vscode\settings.json
echo         "PATH": "${env:PATH};%strpath%;%strpath%bin"   >> %1\.vscode\settings.json
echo     }                                                  >> %1\.vscode\settings.json
echo }                                                      >> %1\.vscode\settings.json

echo [Asm] Complete!

goto normalexit

:noargerror
echo [Asm] No argument!
goto normalexit

:patherror
echo [Asm] Path error!
goto normalexit

:normalexit
@echo on