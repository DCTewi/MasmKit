@echo off

echo [Asm] Initing new assembly workspace

mkdir bin
mkdir .vscode

copy %~dp0workspace .
copy %~dp0workspace\bin .\bin

rem copy files
set strpath=%~dp0
set strpath=%strpath:\=\\%

rem vscode path setting
echo {                                                       > .vscode\settings.json
echo     "terminal.integrated.env.windows": {               >> .vscode\settings.json
echo         "PATH": "${env:PATH};%strpath%;%strpath%bin"   >> .vscode\settings.json
echo     }                                                  >> .vscode\settings.json
echo }                                                      >> .vscode\settings.json

echo [Asm] Complete!

@echo on