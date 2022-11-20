@echo off

:: string_join "!string!" "!join!" return

call create_string content %1

call create_string join %2

set /a limit=%content_length%-1

for /l %%g in ( 0, 1, %limit% ) do (

    if not %%g equ %limit% (

        set %3=!%3!!content:~%%g,1!!join!
    )else (
        
        set %3=!%3!!content:~%%g,1!
    )
)

