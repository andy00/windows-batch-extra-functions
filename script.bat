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

    echo Grocery: !grocery!
    echo Array content: !grocery_length!

    call create_array numberz " " "1 -88 3 4 -1 -2 -3 10 -99 2 3 5 6"    
    call get_minimum numberz min_numberz
    echo Min: !min_numberz!

    call get_maximum numberz max_numberz
    echo Max: !max_numberz!

    call get_power 8 3 pow
    echo pow: !pow!

    call absolute_value 74 abs
    echo Absolute: !abs!

    call range numbers "," 20
    echo Numbers: !numbers!

    call sum numberz sumz
    echo Sumz: !sumz!

endlocal
goto :eof
