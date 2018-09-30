@echo off
"C:\Bitnami\redmine-3.4.6-1/mysql\bin\mysql.exe" --defaults-file="C:\Bitnami\redmine-3.4.6-1/mysql\my.ini" -u root -e "UPDATE mysql.user SET Password=password('%1') WHERE User='root';"
"C:\Bitnami\redmine-3.4.6-1/mysql\bin\mysql.exe" --defaults-file="C:\Bitnami\redmine-3.4.6-1/mysql\my.ini" -u root -e "DELETE FROM mysql.user WHERE User='';"
"C:\Bitnami\redmine-3.4.6-1/mysql\bin\mysql.exe" --defaults-file="C:\Bitnami\redmine-3.4.6-1/mysql\my.ini" -u root -e "FLUSH PRIVILEGES;"
