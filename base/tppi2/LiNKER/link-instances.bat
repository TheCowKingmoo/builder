@echo off
:: $HOME/.local/share/polymc/instances
:: $HOME/.local/share/polymc/instances/e31-mcu
:: $HOME/.MCUpdater/instances/e31
:: $HOME/.local/share/polymc => %AppData%\PrismLauncher
:: $HOME/.MCUpdater => %AppData%\.MCUpdater
set PRISM=%AppData%\PrismLauncher
set MCU=%AppData%\.MCUpdater
set PRISMI=%PRISM%\instances\e31-mcu
set MCUI=%MCU%\instances\e31

if exist %PRISM%\instances (
    echo Found prism instance root
) else (
    echo Could not find prism instance root near %PRISM%\instances
    echo Edit the PRISM variable in this script or install prism launcher from
    echo https://prismlauncher.org/
    exit 1
)

if exist %PRISMI% (
    echo Prism instance for e31-mcu found! Run this script only once
    exit 1
)

if exist %MCUI% (
    echo MCUpdater instance for e31 found
) else (
    echo Could not find MCUpdater instance for e31.
    exit 1
)

mkdir %PRISMI%
copy mmc-pack.json %PRISMI%\mmc-pack.json
copy instance.cfg %PRISMI%\instance.cfg
mklink /J %PRISMI%\.minecraft %MCUI%
