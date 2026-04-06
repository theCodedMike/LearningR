#因子 用于存储不同类别的数据类型
#factor(vector, levels, labels = levels, exclude = NA, ordered = is.ordered(x), nmax = NA)
#levels: 指定各水平值, 不指定时由向量的不同值来求得
#labels: 水平的标签, 不指定时用各水平值的对应字符串
#exclude: 排除的字符
#ordered: 逻辑值，用于指定水平是否有序
#nmax: 水平的上限数量

test_fac = factor(c("男", "女", "男", "女", "男")) #因子
print(test_fac)
#[1] 男 女 男 女 男
#Levels: 男 女
is.factor(test_fac) #TRUE

sex = factor(c('f', 'm', 'f', 'f', 'm'), levels = c('f', 'm'), labels = c('female', 'male'), ordered = TRUE)
print(sex)
#[1] female male female female male  
#Levels: female < male

#生成因子水平 gl()
#gl(n, k, length = n*k, labels = seq_len(n), ordered = FALSE)
#n: 设置level的个数
#k: 设置每个level重复的次数
#length: 设置长度
#labels: 设置level的值
#ordered: 设置level是否已排好序，布尔值
gl(3, 4, labels = c('A', 'B', 'C'))
#[1] A A A A B B B B C C C C
#Levels: A B C








