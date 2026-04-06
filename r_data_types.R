#R语言中有3种基本数据类型
# 数字，一般型和科学计数法  123 -4.4
# 逻辑 TRUE FALSE
# 文本 "Hello" == 'Hello'
"Hello" == 'Hello'  #TRUE

#按对象类型来分是6种
#一、向量vector          c()是创造向量的函数
#二、列表list            list()是创造列表的函数
#三、矩阵matrix          matrix()是创造矩阵的函数
#四、数组array           aray()是创造数组的函数
#五、因子factor          factor()是创造因子的函数
#六、数据框data.frame

## 数字
c(1) + c(2)             #3
c(3, 4) + c(5, 0)       #8 4
v3 = c(1, 3, 5) - c(1, 2, 3) #0 1 2
v3[1]                   #0 索引下标从1开始
v3[1:3]                 #0 1 2
v3[-3]                  #0 1 去掉第3项，这里并不会删除原数据
v3[c(-1, -3)]           #1 去掉第1和3项
v3 + 10                 #10 11 12
v3 / 2                  #0.0 0.5 1.0
v3 ^ 3                  #0 1 8
length(v3)              #3 向量长度
sort(v3)  #排序
rev(v3)   #逆序
order(v3) #排序后输出其原下标
sum(v3)   #求和
mean(v3)  #求平均值
var(v3)   #求方差
sd(v3)    #求标准差
min(v3)   #求最小值
max(v3)   #求最大值
range(v3) #取值范围，即最小值-最大值 0 2

#向量生成方式
#@1 利用c()函数
#@2 使用min:max运算符
#@3 seq()函数可以生成等差数列
seq(1, 9, 2) #1 3 5 7 9
seq(0, 1, length.out=5) #0.00 0.25 0.50 0.75 1.00
#@4 rep函数
rep(1, 4) #1 1 1 1

# NA表示缺失，即有位置，但是没有值
# NULL表示不存在，即没有位置也就不存在值
c(NA, NA, NULL, NA)         #NA NA NA
length(c(NA, NA, NULL, NA)) #3


## 逻辑
a = c(11, 12, 13)
b = a > 12 #FALSE FALSE TRUE
which(b)    #3 筛选值为TRUE的元素的下标
a[which(b)] #13
all(b)      #FALSE
any(b)      #TRUE


## 字符串
c = "我爱你"
d = "HelloWorld"
toupper(d)  #"HELLOWORLD"
tolower(d)  #"helloworld"
nchar(c, type = "bytes") #9  bytes可以简写为b
nchar(c, type = "chars") #3  chars可以简写为c
nchar(c)                 #3
substr(d, 1, 4)          #"Hell"
substring(d, 4)          #"loWorld"
substr(c, 1, 2)          #"我爱"
as.numeric("10")         #10
as.numeric("A")          #NA,强制改变过程中产生了NA
as.character(11.2)       #"11.2"
as.character(NA)         #NA
as.character(NULL)       #character(0)



## 矩阵
vec = c(1, 2, 3, 4, 5, 6)
m1 = matrix(vec, 2, 3, byrow = TRUE)  #2行3列，数据先填充行；如果没有byrow，则先填充列
#      [,1] [,2] [,3]
#[1,]    1    2    3
#[2,]    4    5    6
m1[1, 1]                #1
m1[1, 3]

#矩阵可以和标量做运算，也可以和相应的矩阵做运算









