# 函数
#function_name <- function(arg_1, arg_2, ...) {
#    # 函数体
#    # 执行的代码块
#    return(output)
#}

#定义一个加法函数
add_numbers = function(x, y) {
    sum = x + y
    return(sum)
}

add_numbers(3, 5) #8
add_numbers(x = 3, y = 5) #8
add_numbers(y = 5, x = 3) #8

add_numbers_2 = function(x, y = 10) {
    sum = x + y
    return(sum)
}
add_numbers_2(3) #13

## 内置函数
seq(1, 10)         #1  2  3  4  5  6  7  8  9 10
seq(1, 10, by = 2) #1 3 5 7 9
mean(1:10)         #5.5
sum(1:10)          #55
paste("1", "2", "3", "4", "5")  #"1 2 3 4 5"
cat("1", "2", "3", "4", "5")    #1 2 3 4 5
length(1:10)       #10
length(c("a", "b", "c")) #3
str(1:10)             #int [1:10] 1 2 3 4 5 6 7 8 9 10
str(c("a", "b", "c")) #chr [1:3] "a" "b" "c"
