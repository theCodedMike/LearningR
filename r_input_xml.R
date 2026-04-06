#XML文件
# 安装包
install.packages("XML")
# 验证包是否安装
any(grepl("XML", installed.packages())) #TRUE
# 载入包
library("XML")
# 读取XML文件
xml_data = xmlParse("./test_xml.xml")
#<?xml version="1.0"?>
#<sites>
#  <site>
#    <id>1</id>
#    <name>Alibaba</name>
#    <url>www.taobao.com</url>
#    <likes>111</likes>
#  </site>
#  <site>
#    <id>2</id>
#    <name>Tencent</name>
#    <url>www.qq.com</url>
#    <likes>222</likes>
#  </site>
#  <site>
#    <id>3</id>
#    <name>ByteDance</name>
#    <url>www.bytedance.com</url>
#    <likes>333</likes>
#  </site>
#</sites>

# 提取根节点
root_node = xmlRoot(xml_data)
#<sites>
#  <site>
#    <id>1</id>
#    <name>Alibaba</name>
#    <url>www.taobao.com</url>
#    <likes>111</likes>
#  </site>
#  <site>
#    <id>2</id>
#    <name>Tencent</name>
#    <url>www.qq.com</url>
#    <likes>222</likes>
#  </site>
#  <site>
#    <id>3</id>
#    <name>ByteDance</name>
#    <url>www.bytedance.com</url>
#    <likes>333</likes>
#  </site>
#</sites>

# 统计数据量
xmlSize(root_node) #3

# 查看数据
root_node[1]
#$site
#<site>
#    <id>1</id>
#    <name>Alibaba</name>
#    <url>www.taobao.com</url>
#    <likes>111</likes>
#    </site>
#
#    attr(,"class")
#[1] "XMLInternalNodeList" "XMLNodeList"
root_node[[1]][[2]] #<name>Alibaba</name>
root_node[[3]][[3]] #<url>www.bytedance.com</url>


# 把xml转换为列表
xml_list = xmlToList(xml_data)
#$site
#$site$id
#[1] "1"
#$site$name
#[1] "Alibaba"
#$site$url
#[1] "www.taobao.com"
#$site$likes
#[1] "111"

#$site
#$site$id
#[1] "2"
#$site$name
#[1] "Tencent"
#$site$url
#[1] "www.qq.com"
#$site$likes
#[1] "222"

#$site
#$site$id
#[1] "3"
#$site$name
#[1] "ByteDance"
#$site$url
#[1] "www.bytedance.com"
#$site$likes
#[1] "333"

xml_list[[1]]
#$id
#[1] "1"
#$name
#[1] "Alibaba"
#$url
#[1] "www.taobao.com"
#$likes
#[1] "111"

xml_list[[1]][[2]] #"Alibaba"
xml_list[[1]]$name #"Alibaba"


# 把xml转换为table
df = xmlToDataFrame(xml_data)
#  id      name               url likes
#1  1   Alibaba    www.taobao.com   111
#2  2   Tencent        www.qq.com   222
#3  3 ByteDance www.bytedance.com   333

# 保存为XML
root = newXMLNode("sites")
for (i in seq_len(nrow(df))) {
    site = newXMLNode("site", parent = root)
    newXMLNode("id", df$id[i], parent = site)
    newXMLNode("name", df$name[i], parent = site)
    newXMLNode("url", df$url[i], parent = site)
    newXMLNode("likes", df$likes[i], parent = site)
}

saveXML(root, file = "save_to_xml.xml")
