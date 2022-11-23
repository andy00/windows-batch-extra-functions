@echo off

:: call array_insert array delimiter position

call create_string delimiter %2
call create_string value %3
set position=%4
set new_array=

set /a limit=!%1_length%!-1

for /l %%g in ( 0, 1, %limit% ) do (
    
    if %%g equ %position% (
        set new_array=!new_array!!value!!delimiter!

    )
    if %%g equ %limit% (

        set new_array=!new_array!!%1[%%g]!
    ) else (
        
        set new_array=!new_array!!%1[%%g]!!delimiter!
    )
)

call create_array %1 "!delimiter!" "!new_array!"
