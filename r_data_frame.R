#数据框，即表格，是特殊的二维列表
#数据框每一列都有一个唯一的列名，长度都是相等的，同一列的数据类型需要一致，不同列的数据类型可以不一样


#data.frame(data, row.names = NULL, check.rows = FALSE,
#            check.names = TRUE, fix.empty.names = TRUE,
#            stringsAsFactors = default.stringsAsFactors())
#data: 列向量，可以是任何类型(字符、数值、布尔)，一般以tag=value或value的形式表示
#row.names: 行名，默认为NULL，可以为单个数字、字符串或二者组成的向量
#check.rows: 检查行的名称和长度是否一致
#check.names: 检查行名是否合法
#fix.empty.names: 如果check.names=TRUE，是否将空的变量名替换为X1,X2等
#stringsAsFactors: 布尔值，字符是否转换为因子

table = data.frame(
    姓名=c("张三", "李四", "王五"),
    工号=c(1001, 1002, 1003),
    月薪=c(5000, 6000, 7000)
)
print(table)
#  姓名 工号 月薪
#1 张三 1001 5000
#2 李四 1002 6000
#3 王五 1003 7000
str(table)
#'data.frame':	3 obs. of  3 variables:
#$ 姓名: chr  "张三" "李四" "王五"
#$ 工号: num  1001 1002 1003
#$ 月薪: num  5000 6000 7000
summary(table)
#姓名                工号           月薪     
#Length:3           Min.   :1001   Min.   :5000  
#Class :character   1st Qu.:1002   1st Qu.:5500  
#Mode  :character   Median :1002   Median :6000  
#                   Mean   :1002   Mean   :6000  
#                   3rd Qu.:1002   3rd Qu.:6500  
#                   Max.   :1003   Max.   :7000  

table$姓名 == table[1]  #"张三" "李四" "王五"
table$姓名[1] #"张三"
table[1:2] #前2列
table[1:2,] #前2行
table[1:2, 1:2] #前2行前2列

#更新某个数据
table$姓名[1] = "张三"

#添加列
table$部门 = c("技术部", "人事部", "财务部")

# cbind() 函数将多个向量合成一个数据框
#cbind(c1, c2, c3...)

#rbind() 函数将多个数据框合成一个数据框
#rbind(table1, table2)
temp_table_1 = data.frame(
    姓名 = c("张三", "李四","王五"),
    工号 = c("001","002","003"),
    月薪 = c(1000, 2000,3000)
)
temp_table_2 = data.frame(
    姓名 = c("小明", "小白"),
    工号 = c("101","102"),
    月薪 = c(5000, 7000)
)
# 合并两个数据框
rbind(temp_table_1,temp_table_2)
#  姓名 工号 月薪
#1 张三  001 1000
#2 李四  002 2000
#3 王五  003 3000
#4 小明  101 5000
#5 小白  102 7000


