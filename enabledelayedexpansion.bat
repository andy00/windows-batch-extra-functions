@echo off
::Set registry for cmd with value (/v) "DelayedExpansion", data types (/t) REG_DWORD, data to assign (/d) 1, force without prompt (/f) and send output to nul (> nul)
reg add "HKLM\Software\Microsoft\Command Processor" /v "DelayedExpansion" /t REG_DWORD /d 1 /f > nul
