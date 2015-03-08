@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\Bitnami\redmine-3.0.0-0/mysql\bin\mysqld.exe" --install "redmineMySQL" --defaults-file="C:\Bitnami\redmine-3.0.0-0/mysql\my.ini"

net start "redmineMySQL" >NUL
goto end

:remove
rem -- STOP SERVICES BEFORE REMOVING

net stop "redmineMySQL" >NUL
"C:\Bitnami\redmine-3.0.0-0/mysql\bin\mysqld.exe" --remove "redmineMySQL"

:end
exit
