@echo off

:: call array_revers array "delimiter"

call create_string delimiter %2

set new_array=
set /a limit=!%1_length!-1

for /l %%g in ( %limit%, -1, 0 ) do (

    if %%g equ 0 (

        set new_array=!new_array!!%1[%%g]!
    ) else (

        set new_array=!new_array!!%1[%%g]!!delimiter!

    )
)

call create_array %1 "!delimiter!" "!new_array!"

