@echo off
goto :main

:: call string_count "!haystack!" "!needle!" return

:check_character
    if "!haystack:~%~1,1!" equ "!needle:~%~2,1!" (
        if %~2 equ !needle_limit! (
            set /a %~3=!%~3!+1
        )
    )
goto :eof

:main

    call create_string haystack %1
    call create_string needle %2

    set /a haystack_limit=%haystack_length%-1
    set /a needle_limit=%needle_length%-1

    for /l %%g in ( 0, 1, %haystack_limit% ) do (

        set character=!haystack:~%%g,1!

        if "!character!" equ "!needle:~0,1!" (

            for /l %%h in ( 0, 1, !needle_limit! ) do (

                set /a offset=%%g+%%h

                call :check_character !offset! %%h %3
            )
        )
    )

if "!%3!" equ "" (
    set /a %3=0
)

goto :eof
