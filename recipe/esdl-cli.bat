@echo off

set ESDL_BIN=%~dp0

rem Make ESDL_HOME=%ESDL_BIN%\.. an absolute path:
pushd .
cd /D "%ESDL_BIN%\.."
set ESDL_HOME=%CD%
popd

call "%ESDL_BIN%\activate.bat" "%ESDL_HOME%"
if errorlevel 1 exit 1

if "%*" == "" (
  goto INTERACTIVE
) else (
  goto DELEGATE
)

:INTERACTIVE
prompt $G$S
echo.
@echo ESA Earth System Data Lab CLI. Type "esdl -h" to get help.
echo.

cmd /K ""
exit 0

:DELEGATE
%*
exit 0

