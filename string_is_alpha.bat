@echo off

:: call string_is_alpha "!content!" return
:: check if string content is alphabetical (return 1) or not (return 0).

call create_array badstuff "a" "!a@a#a$a%a^a&a*a(a)a_a+a-a=a[a]a\a{a}a|a;a'a:a,a.a/a?a`a~a1a2a3a4a5a6a7a8a9a0a "

call create_string content %1

set /a limit=%content_length%-1
set /a badstuff_limit=%badstuff_length%-1

set %2=1

for /l %%g in ( 0, 1, %limit% ) do (
    set character=!content:~%%g,1!

    for /l %%h in ( 0, 1, %badstuff_limit% ) do (

        if "!character!" equ "!badstuff[%%h]!" (
            set %2=0

            goto :end
        )

    )
)

:end
