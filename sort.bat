@echo off

:: call sort array_name delimiter 

set array_name=%1

call create_string delimiter %2

set /a limit=!%1_length! - 1

::for every element, starting from 0
for /l %%g in ( 0, 1, %limit% ) do (

    ::for every element, starting from %%g
    for /l %%h in ( %%g, 1, %limit% ) do (

        ::If the value of the current position is greater than value in next position?
        if !%1[%%g]! gtr !%1[%%h]! (

            ::temp variable for switching variables
            set /a temporary=%1[%%g]!

            ::the magic is here
            call create_string %array_name%[%%g] "!%array_name%[%%h]!"
            call create_string %array_name%[%%h] "!temporary!"
        )

    )
)

for /l %%g in ( 0, 1, %limit%) do (
    set content=!content!!%array_name%[%%g]!

    if not %%g equ %limit% (
        set content=!content!%delimiter%
    )
)

call create_array %array_name% "%delimiter%" "%content%"
