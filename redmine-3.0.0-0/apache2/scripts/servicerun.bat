@echo off
rem START or STOP Apache Service
rem --------------------------------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

net start redmineApache
goto end

:stop

"C:/Bitnami/redmine-3.0.0-0/apache2\bin\httpd.exe" -n "redmineApache" -k stop

:end
exit
