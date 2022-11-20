@echo off

:: call string_is_lower "!string!" return

call create_array uppers " " "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z"

call create_string content %1

set /a limit=%content_length%-1

set /a uppers_limit=%uppers_length%-1

set %2=1

for /l %%g in ( 0, 1, %limit% ) do (

    set character=!content:~%%g,1!

    for /l %%h in ( 0, 1, %uppers_limit% ) do (

        if "!character!" equ "!uppers[%%h]!" (

            set %2=0

            goto :end
        )
    )
)

:end
