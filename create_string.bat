::Create variable that contains string
::Echo off, means dont print anything in this batch script. Just run.
@echo off

::get the second variable which is %2 and assign to string
::%1 is used for the variable 
set string=%2

::FOR /F - Loop through items in a text file
::I think this line removes any quotation marks with ~ notation at string=%%~g
for /f "useback tokens=*" %%g in ('%string%') do set string=%%~g

::Assign first variable %1 as string
set %1=%string%
