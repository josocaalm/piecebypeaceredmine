@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:/Bitnami/redmine-3.0.0-0/apache2\bin\httpd.exe" -k install -n "redmineApache" -f "C:/Bitnami/redmine-3.0.0-0/apache2\conf\httpd.conf"

net start redmineApache >NUL
goto end

:remove
rem -- STOP SERVICE BEFORE REMOVING

net stop redmineApache >NUL
"C:/Bitnami/redmine-3.0.0-0/apache2\bin\httpd.exe" -k uninstall -n "redmineApache"

:end
exit
