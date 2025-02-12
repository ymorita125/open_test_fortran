@echo off

call "C:\Program Files (x86)\Intel\oneAPI\setvars.bat" intel64 vs2019

rem ----------------------------------------------------------------------
rem ifort compile aaa
rem ----------------------------------------------------------------------
rem ifort .\src\test_script.f90  /Qopenmp /nostandard-realloc-lhs /MD /c
rem ifort .\src\Nays2DH.f90 /Qopenmp /nostandard-realloc-lhs /MD /c
rem ifort *.obj .\lib\iriclib.lib -o Nays2DH.exe
ifort .\src\test_script.f90 -o open_test_fortran.exe
del *.obj
rem del *.mod

copy /y .\open_test_fortran.exe .\INSTALL
