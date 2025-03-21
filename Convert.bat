:: Copyright © 2025 Simon Bloomfield

@echo off
echo Convert.bat Copyright (C) 2025 Simon Bloomfield
echo This program comes with ABSOLUTELY NO WARRANTY; for details pass `show w`
echo as an argument. This is free software, and you are welcome to redistribute it under certain conditions;
echo pass `show c` as an argument for details.
set Input=%1
set FileInput=%2
set OutputExtension=%3
set OutputName=%~n2
echo:

IF /I %Input%==convert (
    goto ConvertScript
)

IF /I %Input%==show (
    if /I %2=="w" (
        goto warrantypage
        pause
    ) else if %2=="c" (
        goto conditionspage
        pause
    )
)

:warrantypage
echo:
echo NEXT
exit /b

:conditionspage
echo:
echo NEXT
exit /b

:ConvertScript
IF NOT EXIST Output (
    mkdir Output
)
ffmpeg -i %FileInput% Output\%OutputName%%OutputExtension%
