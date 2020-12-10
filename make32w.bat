@echo off
rem make32w.bat, for assembling and linking 32-bit Windows Graphic programs (.EXE)

rem assembling
ML /c /coff /Fl /Zi %1.asm
if errorlevel 1 goto terminate

rem linking
LINK32 /subsystem:windows /debug %1.obj
if errorlevel 1 goto terminate

echo [MAKE32w] Complete!
goto normalexit

:terminate
echo [MAKE32w] Error!

:normalexit
rem clear workspace
del %1.obj %1.ilk %1.lst %1.pdb

@echo on