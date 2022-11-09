@echo off

:: call range array_name delimiter start stop step

:: set array_name %1

call create_string delimiter %2
set start=%3
set stop=%4
set step=%5

if "%stop%" equ "" (
    set /a stop=%start%
    set /a start=0
)

if "%step%" equ "" (
    set /a step=1
)

set content=

for /l %%g in ( %start%, %step%, %stop%) do (
    set content=!content!%%g

    if not %%g equ %stop% (
        set content=!content!%delimiter%
    )

)

call create_array %1 "%delimiter%" "!content!"

