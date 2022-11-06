::Create variable that contains string
::Echo off, means dont print anything in this batch script. Just run.
@echo off

::get the second variable which is %2 and assign to string
::%1 is used for the variable 
set string=%2

::FOR /F - Loop through items in a text file
::I think this line removes any quotation marks with ~ notation at string=%%~g
for /f "useback tokens=*" %%g in ('%string%') do set string=%%~g

::To get string character counts
::Create temporary file, including the quotation mark
echo %2 > %TEMP%\tempfile.txt

::For that text file, remove 5 unecessary characters.
::2 quotes and 3 extra from windows.
::Then assign %1_length for the character counts
for %%g in ( %TEMP%\tempfile.txt ) do (
    set /a %1_length=%%~zg - 5
)

::Delete the temporary file
del %TEMP%\tempfile.txt

::Assign first variable %1 as string
set %1=%string%
