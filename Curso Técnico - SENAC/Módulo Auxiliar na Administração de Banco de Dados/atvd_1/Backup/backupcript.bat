echo off

set currdate=%date:~4%

set filedate=%currdate:/=_%

"C:\Program Files\MySQL\MySQL Workbench 8.0\mysqldump.exe" -u [root] 
-p[123456] [uc4atividades] > "[D:\BackupBanco]_%filedate%.sql"	