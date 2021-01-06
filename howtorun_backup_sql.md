uwsgi --ini ./uwsgi.ini  
mysqllddump https://www.cnblogs.com/linuxk/p/9371475.html  
mysqldump -uroot -p‘123456’ mytest > /mnt/mytest_bak_$(date +%F).sql  
1. 备份操作  
- 备份  
    mysqldump -uroot -p'123456' -B mytest > /mnt/mytest_bak_B.sql  
- 说明：加了-B参数后，备份文件中多的Create database和use mytest的命令  
    加-B参数的好处：  
    加上-B参数后，导出的数据文件中已存在创建库和使用库的语句，不需要手动在原库是创建库的操作，在恢复过程中不需要手动建库，可以直接还原恢复。  
2. 恢复操作  
- 删除mytest库  
mysql -uroot -p'123456' -e "drop database mytest;"  
- 恢复数据  
    - 使用不带参数的导出文件导入（导入时不指定要恢复的数据库），报错  
    mysql -uroot - p'123456' < /mnt/mytest_bak.sql     
    ERROR 1046 (3D000) at line 22: No database selected  
    - 使用带-B参数的导出文件导入（导入时也不指定要恢复的数据库），成功  
    mysql -uroot -p'123456' < /mnt/mytest_bak_B.sql    
- 查看数据  
mysql -uroot -p'123456' -e "select * from mytest.student;"  