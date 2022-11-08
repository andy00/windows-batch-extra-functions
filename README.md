# windows-batch-extra-functions
Simple additional function for windows batch script from John Hammond Batch Tutorials in Youtube https://youtu.be/JbAyxKjUPs0

create_string.bat (video Batch 58 https://youtu.be/vIkg4eLWkMY, 59 https://youtu.be/fpyTnDv6OP8 and 60 https://youtu.be/r2kUMDmxOvA)

create_array.bat (video Batch 61 https://youtu.be/l0ib2kCaVuA)

enableddelayedexpansion.bat and disabledelayedexpansion.bat (video batch 62 https://youtu.be/hCcWfzTPavk)

##############################################################################################################################

::How to use create_array.bat. It can only be used in another batch file with enabledelayedexpansion
::However, If enabledelayedexpansion is ON systemwide, then you can just call create_array.bat anytime.
@echo off
setlocal enabledelayedexpansion
goto :main

:main
setlocal

    call create_array grocery " " "Apples Banana Coke Durian Ember"

    echo !grocery!
    echo !grocery_length!

endlocal
goto :eof
