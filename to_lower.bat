@echo off

goto :main

:set_character
    for %%g in ("A=a" "B=b" "C=c" "D=d" "E=e" "F=f" "G=g" "H=h" "I=i" "J=j" "K=k" "L=l" "M=m" "N=n" "O=o" "P=p" "Q=q" "R=r" "S=s" "T=t" "U=u" "V=v" "W=w" "X=x" "Y=y" "Z=z") do (
        call set "%~1=%%%~1:%%~g%%"
    )

goto :eof

:main

    call create_string content %1
    call create_string final "!content!"

    call :set_character final
    set %2=!final!

goto :eof
