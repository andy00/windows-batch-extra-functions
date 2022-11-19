::How to use create_array.bat. It can only be used in another batch file with enabledelayedexpansion
::However, If enabledelayedexpansion is ON systemwide, then you can just call create_array.bat anytime.

::How to use get_minimum.bat. Same enabledlayedexpansion rules applies

::How to use get_maximum.bat. Same enabledlayedexpansion rules applies

@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

    call create_array grocery " " "Apples Banana Coke Durian Ember"
    echo.
    echo Grocery: !grocery!
    echo Array content: !grocery_length!
    echo.
    call create_array numberz " " "1 -88 3 4 -1 -2 -3 10 -99 2 3 5 6"    
    call get_minimum numberz min_numberz
    echo Min: !min_numberz!
    echo.
    call get_maximum numberz max_numberz
    echo Max: !max_numberz!
    echo.
    call get_power 8 3 pow
    echo pow: !pow!
    echo.
    call absolute_value 74 abs
    echo Absolute: !abs!
    echo.
    call range numbers "," 20
    echo Numbers: !numbers!
    echo.
    call sum numberz sumz
    echo Sumz: !sumz!
    echo.
    call sort numberz " "
    echo Sorted: !numberz!
    echo.
    call create_string sentence "a lot of stuff"
    echo Sentence Length: %sentence_length%
    echo.
    call string_center sentence 15 fill
    echo !fill!
    echo.
    call capitalize "!sentence!" return
    echo Return: !return!
endlocal
goto :eof
