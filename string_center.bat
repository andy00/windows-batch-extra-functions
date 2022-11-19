@echo off

::call string_center string_name width return

set content=
set /a middle=( %2 - !%1_length! )/2

::width is less than string_length
if %2 lss !%1_length! (
    ::set as return as content
    set %3=!%1!

    ::end the script
    goto :eof
)

::if width is more than string_length
::for every number in % 2
for /l %%g in ( 0,  1, %2 ) do (

    ::set content as value of content with " " at the end. Cant really see it but its there.
    set content=!content! 
    if %%g equ %middle% (
            set content=!content!!%1!!content!
            goto :end

    )
)

:end 
set %3=!content!
