@echo off

:: call get_minimum array_name return_name

set /a limit=%1_length - 1

for /l %%g in ( 0, 1, %limit% ) do (
    
    ::set the first array content as minimum
    if %%g equ 0 (
        set /a minimum=!%1[%%g]!
    )else (
        
        ::check if the next array content is less than the current minimum
        if !%1[%%g]! lss !minimum! (
            
            ::if yes, set that as new minimum
            set /a minimum=!%1[%%g]
        )
    )
)

::return minimum as the return_name
set /a %2=!minimum!
