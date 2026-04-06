#Excel文件
# 安装包
install.packages("xlsx")
# 验证包是否安装
any(grepl("xlsx", installed.packages())) #TRUE
# 载入包
library("xlsx")
# 读取Excel文件 (第一行是数据，不是列名)
excel_data = read.xlsx("./test_excel.xlsx", sheetIndex = 1)
#  id      name               url likes NA. NA..1 NA..2
#1  1   Alibaba    www.taobao.com   111  NA    NA    NA
#2  2   Tencent        www.qq.com   222  NA    NA    NA
#3  3 ByteDance www.bytedance.com   333  NA    NA    NA
#4 NA      <NA>              <NA>    NA  NA    NA    NA
#5 NA      <NA>              <NA>    NA  NA    NA    NA

# 使用过滤数据框
filtered_data = subset(excel_data, id >= 1)
#  id      name               url likes NA. NA..1 NA..2
#1  1   Alibaba    www.taobao.com   111  NA    NA    NA
#2  2   Tencent        www.qq.com   222  NA    NA    NA
#3  3 ByteDance www.bytedance.com   333  NA    NA    NA

# 保存为excel文件
write.xlsx(filtered_data, "./save_to_excel.xlsx", row.names = FALSE)