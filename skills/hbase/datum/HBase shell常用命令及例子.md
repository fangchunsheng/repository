
###Hbase shell基本操作命令一栏表
命令|命令表达式
:-:|:-:|
创建表|create '表名称','列名1','列名2','列名N'
添加记录|put '表名称','行名称','列名称','列值'
查看记录|get '表名称','行名称'
查看表中的记录中总数|count '表名称'
删除记录|delete '表名称','行名称','列名称'
删除一张表|要先disable掉这张表，才能对该表进行删除，drop '表名称'
查看所有记录|scan '表名称'
查看表中某列的所有数据|scan '表名称',['列名称']
更新记录|就是重新写一遍数据

### 一般操作
1. 创建一个表  
        create 'member','member_id','address','info'

2. 获得表的描述  
        describe 'member'

3. 删除一个列族，alter，disable，enable  
我们之前建了3个列族，但是发现member_id这个列族是多余的，因为他就是主键，所以我们要将其删除。   

        alter'member,{NAME=>'member_id',METHOD=>'delete'}'

        ERROR: Table memberis enabled. Disable it first before altering.
        报错，删除列族的时候必须先将表给disable掉。
        disable 'member'
        alter'member',{NAME=>'member_id',METHOD=>'delete'}

4. 列出所有表  
        list

5. drop一个表  
        drop 'temp_table'

6. 查询表是否存在  
        exists 'member'

7. 判断表是否enable  
        is_enabled 'member'

### DML操作

1. 插入几条记录  
        put'member','scutshuxue','info:age','24'
        put'member','scutshuxue','info:birthday','1987-06-17'
        put'member','scutshuxue','info:company','alibaba'
        put'member','scutshuxue','address:contry','china'
        put'member','scutshuxue','address:province','zhejiang'
        put'member','scutshuxue','address:city','hangzhou'

2. 获取一跳数据  
  +  获取一个id的所有数据
          get 'member','scutshuxue'
  + 获取一个id，一个列族的所有数据
          get 'member','scutshuxue','info'
3. 更新一条记录
        put 'member','scutshuxue','info:age','99'
        get 'member','scutshuxue','info:age'
4. 全表扫描
        scan 'member'
5. 删除id为tmp的值的'info:age'字段
        delete 'member','tmp','info:age'
6. 删除整行
        deleteall 'member','tmp'
7. 查询表中有多少行
        count 'member'
8. 将整张表清空
        truncate 'member'
