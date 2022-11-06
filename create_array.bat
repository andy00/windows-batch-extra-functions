::How to use
::This script expect to be called by another script and setlocal enabledelayedexpansion is A MUST in that script!
::create_array grocery " " "apple banana coke deeznuts echo"
@echo off
goto :main

:set_index
    ::Creating individual array content
    ::create_string grocery[0] "apple"
    ::create_string grocery[1] "banana"
	call create_string %~1[%~2] "!%~3!"
	
goto :eof

:main
	
	call create_string delimiter %2
	call create_string content %3
	
	set /a offset=0
	set /a index=0
	
	for /l %%g in ( 0, 1, %content_length% ) do (
		::Assign each character to variable character
		set character=!content:~%%g,1!
		
		::If the character is equal to the delimiter
		if "!character!" equ "!delimiter!" (
		
			set /a length=%%g-!offset!
			call :set_index %1 !index! "content:~!offset!,!length!"
			
            ::Increase offset of characters
			set /a offset=%%g + 1
            
            ::Increase count of array content
			set /a index=!index! + 1
		
		)
		
	)

    ::This is for the last content in the array as there is no more delimiter after last array content
	call :set_index %1 !index! content:~%offset%,%content_length%
	set /a %1_length=%index% +1
	set %1=%content%
	
	::Clear variables
	set content=
	set length=
	set offset=
	set character=
	set delimiter=
	set index=

goto :eof
