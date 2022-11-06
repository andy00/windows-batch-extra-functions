::Create variable that contains string
::Echo off, means dont print anything in the terminal. Just run.
@echo OFF

::Get the second variable which is %2 and assign to string
::%1 is used for the variable 
set string=%2

::Number of character to takeaway from string. Default is 5 (3 extra from windows and assumed theres 2 quotation characters)
set /a takeaway=5

::FOR / f - Loop through items in a text file
for /f "useback tokens=*" %%a in ('%string%') do (
		
	::If there is no "" characters
	if %string% equ %%~a (
		::set takeaway as 3
	    set /a takeaway=3
		
	)
    ::I think this line removes any quotation marks with ~ notation at string=%%~a
	set string=%%~a
	
)

::To get string character counts
::Create temporary file, including the quotation mark
echo %2 > %TEMP%\tempfile.txt

::For that text file, remove 5 unecessary characters.
::2 quotes and 3 extra from windows.
::Then assign %1_length for the character counts
for %%g in ( %TEMP%\tempfile.txt ) do (
    set /a %1_length=%%~zg - %takeaway%
)

::Delete the temporary file
del %TEMP%\tempfile.txt

::Assign first variable %1 as string
set %1=%string%
