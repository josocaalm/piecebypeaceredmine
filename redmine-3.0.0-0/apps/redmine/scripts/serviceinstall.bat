@echo off
rem -- Check if argument is INSTALL or REMOVE

if not ""%1"" == ""INSTALL"" goto remove

"C:\Bitnami\redmine-3.0.0-0/apps/redmine\scripts\winserv.exe" install "redmineThin1" -start auto "C:\Bitnami\redmine-3.0.0-0\ruby\bin\ruby.exe" "C:\Bitnami\redmine-3.0.0-0/apps/redmine\htdocs\bin\thin" start -p 3001 -e production -c "C:\Bitnami\redmine-3.0.0-0/apps/redmine/htdocs" -a 127.0.0.1 --prefix /redmine
net start redmineThin1 >NUL
"C:\Bitnami\redmine-3.0.0-0/apps/redmine\scripts\winserv.exe" install "redmineThin2" -start auto "C:\Bitnami\redmine-3.0.0-0\ruby\bin\ruby.exe" "C:\Bitnami\redmine-3.0.0-0/apps/redmine\htdocs\bin\thin" start -p 3002 -e production -c "C:\Bitnami\redmine-3.0.0-0/apps/redmine/htdocs" -a 127.0.0.1 --prefix /redmine

net start redmineThin2 >NUL

goto end

:remove
rem -- STOP SERVICE BEFORE REMOVING

net stop redmineThin1 >NUL

"C:\Bitnami\redmine-3.0.0-0/apps/redmine\scripts\winserv.exe" uninstall "redmineThin1"

net stop redmineThin2 >NUL
"C:\Bitnami\redmine-3.0.0-0/apps/redmine\scripts\winserv.exe" uninstall "redmineThin2"

:end
exit
