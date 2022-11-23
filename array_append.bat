@echo off

:: call array_append array "delimiter" "to_append"

call create_string delimiter %2
call create_string add %3

set temporary=!%1_length!
set %1[!temorary!]=!add!

set /a %1_length=!temporary!+1
set %1=!%1!!delimiter!!add!