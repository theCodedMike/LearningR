###打印####
print("Hello World!")
print(123)
print(3e2)
5e-2 #R是解释型语言
cat(1, "+", 1, "==", 2) #会在2个元素之间自动加空格


###变量###
# R的变量由字母、数字、下划线和点组成，只能由字母和点开头
var.1 = c(0, 1, 2, 3) #使用等号=赋值
print(var.1)

var.2 <- c("learn", "R") #使用左箭头<-赋值
print(var.2)

c(TRUE, 1) -> var.3 #使用右箭头->赋值
print(var.3)

print(ls()) # 查看已定义的变量
#rm(var.3)  # 删除已定义的变量

###IO###
#追加写；如果需要覆盖写，去掉append参数即可
#file参数可以是绝对路径或相对路径
cat("This is my world!", file = "./test.txt", append = TRUE)

#把控制台中输出的文字直接输出到文件中
sink("test.txt", split = TRUE) # 控制台同样输出
for (i in 1:5) {
  print(i)
}
sink() # 取消输出到文件

sink("test.txt", append = TRUE) # 控制台不输出，追加写入文件
print("Hello World!")
sink()

readLines("./test.txt") #从文件中读取
getwd() #获取当前工作目录
setwd() #设置当前工作目录
