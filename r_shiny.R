#Shiny
# 安装包
install.packages("shiny")
# 验证包是否安装
any(grepl("shiny", installed.packages())) #TRUE
any(grepl("bslib", installed.packages())) #TRUE

# 载入包
library(shiny)

# 查看示例1
runExample("01_hello")

















