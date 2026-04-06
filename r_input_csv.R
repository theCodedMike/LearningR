#CSV
#CSV用逗号来分割列，如果数据中含有逗号，就要用双引号将整个数据块包括起来
#CSV文件最后一行需要保留一个空行，不然执行程序会有警告信息

# 读取CSV文件
csv_data = read.csv("./test_csv.csv", encoding = "UTF-8")
#  id      name               url likes
#1  1   Alibaba    www.taobao.com   111
#2  2   Tencent        www.qq.com   222
#3  3 ByteDance www.bytedance.com   333

is.data.frame(csv_data) #TRUE
ncol(csv_data) #4
nrow(csv_data) #3
max(csv_data$likes) #333
subset(csv_data, id == 2)
#  id    name        url likes
#2  2 Tencent www.qq.com   222
retval = subset(csv_data, id >= 1 & likes > 250)
#  id      name               url likes
#3  3 ByteDance www.bytedance.com   333

# 保存为csv文件
write.csv(retval, "./save_to_csv.csv")
