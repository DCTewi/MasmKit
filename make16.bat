@echo off
rem make16.bat,for assembling and linking 16-bit programs (.EXE)

rem assembling
ML /nologo /c /Fl /Zi %1.asm
if errorlevel 1 goto terminate

rem linking
LINK16 /nologo /CO %1.obj;
if errorlevel 1 goto terminate

echo [MAKE16] Complete!
goto normalexit

:terminate
echo [MAKE16] Error!

:normalexit
rem clear workspace
del %1.obj %1.ilk %1.lst %1.pdb

@echo on
