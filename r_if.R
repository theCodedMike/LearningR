#R语言提供了3种判断语句
#if语句
x = 50L # nolint: assignment_linter.
if (is.integer(x)) {
    print("x是一个整数")
}
#if...else...语句
names <- c("Allen", "Bob", "Joy", "Mike", "Zed")
if ("Mike" %in% names) {
    print("包含Mike")
} else if ("Zed" %in% names) {
    print("包含Zed")
} else {
    print("不包含任何指定的名字")
}
#switch语句 switch(expression, case1, case2, case3....)
#表达式可以是整数或字符串
#如果是整数且不在下标范围，返回NULL;
#如果匹配到多个则返回第一个
switch(2, names[1], names[2], names[3], names[4], names[5]) #"Bob"
switch("first", first="1st", second = "2nd", third = "3rd") #1st

