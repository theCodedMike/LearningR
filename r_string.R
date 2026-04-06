#字符串，可以用一对双引号"“或一对单引号''来表示
str_a = "Hello'World"
str_b = '你好"世界'

#str_a[3] #NA 字符串不能这样索引

#paste 字符串拼接
paste(LETTERS[1:5], 1:5) #"A 1" "B 2" "C 3" "D 4" "E 5"
paste(LETTERS[1:5], 1:5, collapse = "-") #"A 1-B 2-C 3-D 4-E 5"
paste(LETTERS[1:5], 1:5, sep = "|", collapse = "-") #"A|1-B|2-C|3-D|4-E|5"

#format 格式化字符串
#format(x, digits, nsmall, scientific, width, justify = c("left", "right", "centre", "none"))
# x: 输入的字符串或数字
# digits: 显示的位数
# nsmall: 小数点后显示的最少位数
# scientific: 是否使用科学计数法表示数字
# width: 输出字符串的最小宽度，开头填充空白
# justify: 字符串对齐方式，默认为右对齐
format(23.123456789, digits = 9) #"23.1234568"
format(c(6, 13.14521), scientific = TRUE) #"6.000000e+00" "1.314521e+01"
format(23.47, nsmall = 5) #"23.47000"
format(13.7, width = 6) #"  13.7"
format("ABCDE", width = 9, justify = "l") #"ABCDE    "  左对齐
format("ABCDE", width = 9, justify = "c") #"  ABCDE  "  居中对齐

#nchar 计算字符串长度
nchar(str_a) #11
nchar(str_b) #5

#大小写转换
tolower(str_a) #"hello'world"
toupper(str_a) #"HELLO'WORLD"

#substr 截取字符串
substr(str_a, 1, 5) #"Hello"
substring(str_a, 7) #"World"


#gsub 替换字符串
gsub('o', 'O', str_a) #"HellO'WOrld"
gsub("World", "你好", str_a) #"Hello'你好"


#strsplit 分割字符串
strsplit(str_a, "o") #"Hell"  "'W"  "rld"

#遍历字符串
chars = strsplit(str_b, "")
chars[1] #"你" "好" "\"" "世" "界"
chars[2] #NULL
chars[3] #NULL
for (ch in chars[1]) {
    print(ch)
}

for(i in 1:nchar(str_b)) #推荐
    print(substr(str_b, i, i))
