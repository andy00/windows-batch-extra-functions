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
    echo create_string: %sentence%
    echo Sentence Length: %sentence_length%
    echo.
    call string_center sentence 1 fill
    echo string_center: !fill!
    echo.
    call capitalize "!sentence!" return
    echo capitalize: !return!
    echo.
    call string_count "!sentence!" " " total
    echo string_count: !total!
    echo.
    call string_starts_with "!sentence!" "a " does_it
    echo string_starts_with: !does_it!
    echo.
    call string_ends_with "!sentence!" "ff" does_it
    echo string_ends_with: !does_it!
    echo.
    call string_find "!sentence!" "f" position 12
    echo string_find: !position!
    echo.
    call create_string check_alpha "alotofstuff"
    call string_is_alpha "!check_alpha!" return
    echo string_is_alpha: !return!
    echo.
    call create_string stringcheck "alotofstuff"
    call string_is_lower "!stringcheck!" return
    echo string_is_lower: !return!
    echo.
    call create_string stringcheck "1"
    call string_is_digits "!stringcheck!" return
    echo string_is_digits: !return!
    echo.
    call create_string stringcheck "A LOT OF STUFF"
    call string_is_upper "!stringcheck!" return
    echo string_is_upper: !return!
    echo.
    call string_join "!stringcheck!" "..." xyz
    echo string_join: !xyz!
    echo.
    call create_string string "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    call to_lower "!string!" return
    echo to_lower: !return!
    echo.
    call create_string string "abcdefghijklmopqrstuvwxyz"
    call to_upper "!string!" return
    echo to_upper: !return!
    echo.
    call create_string string "abcde ABCDE 12345 QWEasd 67890 xyz YUIOP"
    call string_swapcase "!string!" return
    echo string_swapcase: !return!
    echo.
    call create_array array " " "What am I"
    call array_append array " " "missing"
    echo array_append: !array!
    echo.
    call create_array array " " "this is a fish, is it not"
    call array_count array "is" return
    echo array_count: !return!
    echo.

endlocal
goto :eof
