@echo off
REM make32a.bat, for assembling and linking 32-bit Console programs (.EXE), maximizing source listing

rem assembling
ML /nologo /c /coff /Fl /Zi /Sa %1.asm
if errorlevel 1 goto terminate

rem linking
LINK32 /nologo /subsystem:console /debug %1.obj
if errorlevel 1 goto terminate

echo [MAKE32a] Complete!
goto normalexit

:terminate
echo [MAKE32a] Error!

:normalexit
rem clear workspace
del %1.obj %1.ilk %1.lst %1.pdb

@echo on