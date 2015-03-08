@ECHO OFF
IF NOT "%~f0" == "~f0" GOTO :WinNT
@"ruby.exe" "C:/Bitnami/redmine-3.0.0-0/apps/redmine/htdocs/vendor/bundle/ruby/2.0.0/bin/redcarpet" %1 %2 %3 %4 %5 %6 %7 %8 %9
GOTO :EOF
:WinNT
@"ruby.exe" "%~dpn0" %*
