@echo off
rem make32.bat, for assembling and linking 32-bit Console programs (.EXE)

rem assembling
ML /nologo /c /coff /Fl /Zi %1.asm
if errorlevel 1 goto terminate

rem linking
LINK32 /nologo /subsystem:console /debug %1.obj
if errorlevel 1 goto terminate

echo [MAKE32] Complete!
goto normalexit

:terminate
echo [MAKE32] Error!

:normalexit
rem clear workspace
del %1.obj %1.ilk %1.lst %1.pdb

@echo on