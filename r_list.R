#列表是R语言的对象集合，可以用来保存不同类型的数据，可以是数字、字符串、向量、另一个列表、矩阵、数据框等
#创建列表
a_list = list(1, "Hello", c(1, 2, 3), list("a", "b", "c"))
a_list[1]        #1
a_list[2]        #"Hello"
a_list[3]        #1 2 3
a_list[4]        #列表 "a" "b" "c"
length(a_list)   #4

#给列表各列起名字
names(a_list) = c("num", "text", "vec", "list")
print(a_list)
a_list$num       #1
a_list$text      #"Hello"

#添加元素
a_list[5] = TRUE
print(a_list)

#删除元素
a_list[5] = NULL
print(a_list)

#更新元素
a_list[2] = "World"
print(a_list)

#遍历元素
for (elem in a_list) 
    print(elem)
lapply(a_list, print)
sapply(a_list, print)

#合并2个列表
#merged_list = c(list1, list2)

#将列表转换为向量
unlist(a_list) #"1" "World" "1" "2" "3" "a" "b" "c" 
