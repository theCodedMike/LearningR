#MySQL连接
# 安装包
install.packages("RMySQL")

# 验证包是否安装
any(grepl("RMySQL", installed.packages())) #TRUE

# 载入包
library("RMySQL")

# 连接MySQL数据库
my_sql_con = dbConnect(MySQL(), user = 'root', password = 'root', dbname = 'test', host = 'localhost')
# 查询数据
dbListTables(my_sql_con) #"my_sites"  查看数据库中的表
dbListFields(my_sql_con, "my_sites") # "id" "name" "url" "likes"  查看某张表的字段
dbGetQuery(my_sql_con, "SELECT * FROM my_sites WHERE id >= 2")
#  id      name               url likes
#1  2   Tencent        www.qq.com   222
#2  3 ByteDance www.bytedance.com   333
# 新增数据
dbGetQuery(my_sql_con, "INSERT INTO my_sites (id, name, url, likes) VALUES (4, 'Baidu', 'www.baidu.com', 444)")
# 修改数据
dbGetQuery(my_sql_con, "UPDATE my_sites SET likes = 555 WHERE id = 4")
# 删除数据
dbGetQuery(my_sql_con, "DELETE FROM my_sites WHERE id = 4")


dbDisconnect(my_sql_con) #断开连接
