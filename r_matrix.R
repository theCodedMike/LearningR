#矩阵 类似于二维数组，矩阵里的元素可以是数字、符号或数学式
#matrix(data = NA, nrow = 1, ncol = 1, byrow = FALSE,dimnames = NULL)
#data 向量
#nrow 行数
#ncol 列数
#byrow TRUE时按行排列，FALSE时按列
#dimname 设置行和列的名称

vec = c(1, 2, 3, 4, 5, 6)
matrix(vec, 2, 3)
#      [,1] [,2] [,3]
#[1,]    1    3    5
#[2,]    2    4    6

m = matrix(vec, 2, 3, byrow = TRUE, dimnames = list(c("row1", "row2"), c("col1", "col2", "col3")))
#      col1 col2 col3
#row1    1    2    3
#row2    4    5    6

#转置矩阵 t()
t(m)
#      row1 row2
#col1    1    4
#col2    2    5
#col3    3    6

#访问矩阵中的元素
m[1, 1] #1
m[1, 2] #2
m[1, 3] #3
m[2, 1] #4
m[2, 2] #5
m[2, 3] #6
m[1,]   #1 2 3
m[,2]   #2 5

#矩阵的加减法  只有行数和列数相同的矩阵才能相互加减
#矩阵的乘除法  相乘时，第1个矩阵的列数必须等于第2个矩阵的行数
A = matrix(c(1, -2, 3, 0, -4, 5), 3, 2, byrow = TRUE)
B = matrix(c(-7, 8, 9, 10), 2, 2, byrow = TRUE)
A * B
