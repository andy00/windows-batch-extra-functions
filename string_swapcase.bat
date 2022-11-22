@echo off

:: call string_swapcase "!string!" return

goto :main

:set_character
    set new_string=!new_string!!%~1!
goto :eof

:main

    call create_array alphabet " " "A B C D E F G H I J K L M N O P Q R S T U V W X Y Z a b c d e f g h i j k l m n o p q r s t u v w x y z"

    call create_string content %1

    set /a limit=%content_length%-1
    set /a alphabet_limit=%alphabet_length%-1

    set new_string=

    for /l %%g in ( 0, 1, %limit% ) do (

        set character=!content:~%%g,1!
        set found=false

        for /l %%h in ( 0, 1, %alphabet_limit% ) do (

            if "!character!" equ "!alphabet[%%h]!" (
                
                if %%h geq 26 (
                    
                    set /a lower=%%h-26

                    call :set_character alphabet[!lower!]
                    set found=true
                )
                if %%h leq 26 (
                
                   set /a upper=%%h+26

                    call :set_character alphabet[!upper!]
                    set found=true 
                
                )
            )
        )
        if "!found!" equ "false" (
            set new_string=!new_string!!character!
        )
    )
    ::Not sure why John, set -1 in his video.
    set %2=!new_string:~0!

goto :eof
