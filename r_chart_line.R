#曲线图
#curve(expr, from = NULL, to = NULL, n = 101, add = FALSE,
#      type = "l", xname = "x", xlab = xname, ylab = NULL,
#      log = NULL, xlim = NULL, …)
#expr: 函数表达式
#from: x的起始值
#to: x的结束值
#n: 曲线上的点数
#add: 是否将曲线添加到已存在的绘图中
#type: 绘图类型
  #p: 点
  #l: 直线
  #b: 同时绘制点和线
  #c: 仅绘制参数b所示的线
  #o: 同时绘制点和线，且线穿过点
  #h: 绘制出点到横坐标轴的垂直线
  #s: 阶梯图，先横后纵
  #S: 阶梯图，先纵后竖
  #n: 空图
#xname: x轴变量名称
#xlab: x轴标签
#ylab: y轴标签
#log: 是否使用对数坐标轴
#xlim: x轴范围
#ylim: y轴范围

# 示例1
curve(sin(x), -2*pi, 2*pi)

# 示例2
custom_f = function(x) {
    if(x >= 0)
        return(x)
    else
        return(x ^ 2)
}
x = seq(-2, 2, length = 100)
y = rep(0, length(x))
j = 1
for(i in x) {
    y[j] = custom_f(i)
    j = j + 1
}
plot(x, y, type = "l")

# 示例3
plot(
    c(7, 12, 28, -10, 33, 33),
    type = "o",
    col = "red",
    xlab = "Month",
    ylab = "Temperature",
    main = "Average Monthly Temperature"
)

