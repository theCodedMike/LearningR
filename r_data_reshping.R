#数据重塑
#merge() 合并数据框
#merge(x, y, by = intersect(names(x), names(y)),
#      by.x = by, by.y = by, all = FALSE, all.x = all, all.y = all,
#      sort = TRUE, suffixes = c(".x",".y"), no.dups = TRUE,
#      incomparables = NULL, …)
#x,y: 数据框
#by,by.x,by.y: 指定2个数据框中匹配列的名称，默认下使用相同列名称
#all: 布尔值，是否保留所有行，默认为FALSE，即只保留匹配的行
#     FALSE: natural join或inner join, 即取交集
#     TRUE: full outer join, 即取并集
#     FALSE, all.x=TRUE: left outer join, 即以x为主，取x的全部行和y中匹配的行
#     FALSE, all.y=TRUE: right outer join, 即以y为主，
#all.x: 布尔值，是否保留x数据框中的所有行
#all.y: 布尔值，是否保留y数据框中的所有行
#sort: 布尔值，是否对结果进行排序，默认为TRUE

df1 = data.frame(
    site_id = 1:6,
    site_name = c("Baidu", "Tencent", "Alibaba", "ByteDance", "Meituan", "JD")
)
df2 = data.frame(
    site_id = c(2, 4, 6, 7, 8),
    city = c("Shenzhen", "Beijing", "Beijing", "Hangzhou", "Guangzhou")
)
#INNER JOIN
merge(df1, df2, by = "site_id")
#  site_id site_name     city
#1       2   Tencent Shenzhen
#2       4 ByteDance  Beijing
#3       6        JD  Beijing

#FULL JOIN
merge(df1, df2, by = "site_id", all = TRUE)
#  site_id site_name      city
#1       1     Baidu      <NA>
#2       2   Tencent  Shenzhen
#3       3   Alibaba      <NA>
#4       4 ByteDance   Beijing
#5       5   Meituan      <NA>
#6       6        JD   Beijing
#7       7      <NA>  Hangzhou
#8       8      <NA> Guangzhou

#LEFT JOIN
merge(df1, df2, by = "site_id", all.x = TRUE)
#  site_id site_name     city
#1       1     Baidu     <NA>
#2       2   Tencent Shenzhen
#3       3   Alibaba     <NA>
#4       4 ByteDance  Beijing
#5       5   Meituan     <NA>
#6       6        JD  Beijing

#RIGHT JOIN
merge(df1, df2, by = "site_id", all.y = TRUE)
#  site_id site_name      city
#1       2   Tencent  Shenzhen
#2       4 ByteDance   Beijing
#3       6        JD   Beijing
#4       7      <NA>  Hangzhou
#5       8      <NA> Guangzhou


#melt() 将数据从宽格式转换为长格式
#melt(data, ..., na.rm = FALSE, value.name = "value")
#data: 数据框
#...: 需要保留的列，通常是id变量
#na.rm: 布尔值，是否删除NA值，默认为FALSE
#value.name: 字符串，指定值列的名称，默认为"value"
df3 = data.frame(           #   id time x1  x2
    id = c(1, 1, 2, 2),     #1   1   1   5   6
    time = c(1, 2, 1, 2),   #2   1   2   3   5
    x1 = c(5, 3, 6, 2),     #3   2   1   6   1
    x2 = c(6, 5, 1, 4)      #4   2   2   2   4
)
library(MASS)
library(reshape2)
library(reshape)
melted_data = melt(df3, id = c("id", "time"))
#  id time variable value
#1  1    1       x1     5
#2  1    2       x1     3
#3  2    1       x1     6
#4  2    2       x1     2
#5  1    1       x2     6
#6  1    2       x2     5
#7  2    1       x2     1
#8  2    2       x2     4


#cast() 将数据从长格式转换为宽格式
#dcast()返回数据框，acast()返回一个向量/矩阵/数组
#dcast(
#    data,                         #合并后的数据框
#    formula,                      #类似x-y格式，x是行标签，y是列标签
#    fun.aggregate = NULL,         #聚合函数，用于对value进行处理
#    ...,
#    margins = NULL,               #是否添加行/列总计，默认为NULL，即不添加
#    subset = NULL,                #是否对数据进行子集化，默认为NULL，即不进行子集化
#    fill = NULL,                  #缺失值填充，默认为NULL，即不进行填充
#    drop = TRUE,                  #是否保留默认值
#    value.var = guess_value(data) #指定值列的名称，默认为guess_value(data)，即自动猜测值列
#)
#acast(
#    data,
#    formula,
#    fun.aggregate = NULL,
#    ...,
#    margins = NULL,
#    subset = NULL,
#    fill = NULL,
#    drop = TRUE,
#    value.var = guess_value(data)
#)
cast(melted_data, id + time ~ variable)
#  id time x1 x2
#1  1    1  5  6
#2  1    2  3  5
#3  2    1  6  1
#4  2    2  2  4
cast(melted_data, id + variable ~ time)
#  id variable 1 2
#1  1       x1 5 3
#2  1       x2 6 5
#3  2       x1 6 2
#4  2       x2 1 4
cast(melted_data, id ~ variable + time)
#  id x1_1 x1_2 x2_1 x2_2
#1  1    5    3    6    5
#2  2    6    2    1    4
cast(melted_data, id ~ variable, mean)
#  id  x1  x2
#1  1  4  5.5
#2  2  4  2.5
cast(melted_data, time ~ variable, mean)
#  time  x1    x2
#1   1   5.5   3.5
#2   2   2.5   4.5
cast(melted_data, id ~ time, mean)
#  id   1   2
#1  1  5.5  4
#2  2  3.5  3






