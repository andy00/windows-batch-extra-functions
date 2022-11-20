@echo off

:: call string_is_lower "!string!" return

call create_array lowers " " "a b c d e f g h i j k l m n o p q r s t u v w x y z"

call create_string content %1

set /a limit=%content_length%-1

set /a lowers_limit=%lowers_length%-1

set %2=1

for /l %%g in ( 0, 1, %limit% ) do (

    set character=!content:~%%g,1!

    for /l %%h in ( 0, 1, %lowers_limit% ) do (

        if "!character!" equ "!lowers[%%h]!" (

            set %2=0

            goto :end
        )
    )
)

:end
