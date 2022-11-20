@echo off

:: call string_is_digits "!string!" return

call create_array badstuff "0" "~0`0!0@0#0$0%0^0&0*0(0)0-0_0=0+0[0]0\0{0}0|0;0:0'0,0.0/0?0a0b0c0d0e0f0g0h0i0j0k0l0m0n0o0p0q0r0s0t0u0v0w0x0y0z0A0B0C0D0E0F0G0H0I0J0K0L0M0N0O0P0Q0R0S0T0U0V0W0X0Y0Z0 0"
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
