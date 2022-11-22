@echo off
goto :main

:: call to_upper.bat "!string!" return

:set_character
    for %%g in ("a=A" "b=B" "c=C" "d=D" "e=E" "f=F" "g=G" "h=H" "i=I" "j=J" "k=K" "l=L" "m=M" "n=N" "o=O" "p=P" "q=Q" "r=R" "s=S" "t=T" "u=U" "v=V" "w=W" "x=X" "y=Y" "z=Z") do (
        call set "%~1=%%%~1:%%~g%%"
    )

goto :eof

:main

    call create_string content %1
    call create_string final "!content!"

    call :set_character final
    set %2=!final!

goto :eof
