#JSON
# 安装包
install.packages("rjson")
# 验证包是否安装
any(grepl("rjson", installed.packages())) #TRUE
# 载入包
library("rjson")
# 读取JSON文件
json_data = fromJSON(file = "./test_json.json")
#$id
#[1] "1" "2" "3"
#$name
#[1] "Alibaba"   "Tencent"   "ByteDance"
#$url
#[1] "www.taobao.com"    "www.qq.com"        "www.bytedance.com"
#$likes
#[1] 111 222 333

# 查看数据
json_data[[2]] == json_data$name #"Alibaba"   "Tencent"   "ByteDance"
json_data[[2]][[1]] == json_data$name[[1]] #"Alibaba"


# 把json数据转换为data.frame
df = as.data.frame(json_data)
#  id      name               url likes
#1  1   Alibaba    www.taobao.com   111
#2  2   Tencent        www.qq.com   222
#3  3 ByteDance www.bytedance.com   333

# 保存为JSON
write(toJSON(df), "./save_to_json.json")
