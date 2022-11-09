@echo off

:: call get_maximum array_name return_name

set /a limit=%1_length - 1

for /l %%g in ( 0, 1, %limit% ) do (
    
    ::set the first array content as maximum
    if %%g equ 0 (
        set /a maximum=!%1[%%g]!
    )else (
        
        ::check if the next array content is less than the current maximum
        if !%1[%%g]! gtr !maximum! (
            
            ::if yes, set that as new maximum
            set /a maximum=!%1[%%g]
        )
    )
)

::return maximum as the return_name
set /a %2=!maximum!

