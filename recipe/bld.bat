"%PYTHON%" setup.py install --single-version-externally-managed --record=record.txt
if errorlevel 1 exit 1

set MENU_DIR=%PREFIX%\Menu
IF NOT EXIST (%MENU_DIR%) mkdir "%MENU_DIR%"

set SCRIPTS_DIR=%PREFIX%\Scripts
IF NOT EXIST (%SCRIPTS_DIR%) mkdir "%SCRIPTS_DIR%"

copy "%RECIPE_DIR%\esdl.ico" "%MENU_DIR%"
if errorlevel 1 exit 1

copy "%RECIPE_DIR%\esdl-menu-win.json" "%MENU_DIR%\esdl.json"
if errorlevel 1 exit 1

copy "%RECIPE_DIR%\esdl-cli.bat" "%SCRIPTS_DIR%"
if errorlevel 1 exit 1
