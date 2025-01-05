



pip check
IF %ERRORLEVEL% NEQ 0 exit /B 1
fonttools subset --help
IF %ERRORLEVEL% NEQ 0 exit /B 1
ttx -h
IF %ERRORLEVEL% NEQ 0 exit /B 1
pyftsubset --help
IF %ERRORLEVEL% NEQ 0 exit /B 1
echo $FONTTOOLS_WITH_CYTHON
IF %ERRORLEVEL% NEQ 0 exit /B 1
python -c "from fontTools.cu2qu.cu2qu import COMPILED; assert COMPILED"
IF %ERRORLEVEL% NEQ 0 exit /B 1
exit /B 0
