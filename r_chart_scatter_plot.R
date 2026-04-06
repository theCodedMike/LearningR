#散点图
#plot(x, y, type="p", main, xlab, ylab, xlim, ylim, axes)
#x: 数值向量，表示x轴上的点
#y: 数值向量，表示y轴上的点
#type: 图形类型，"p"表示散点图
#main: 图表标题
#xlab: x轴标签
#ylab: y轴标签
#xlim: x轴范围
#ylim: y轴范围
#axes: 是否显示坐标轴，默认为TRUE

# 示例1
plot(
    c(1, 2, 3, 4, 5),
    c(2, 3, 5, 7, 11),
    type = "p",
    main = "Scatter Plot Example",
    xlab = "X",
    ylab = "Y"
)

# 示例2
input = mtcars[, c("wt", "mpg")]
plot(
    x = input$wt,
    y = input$mpg,
    xlab = "Weight",
    ylab = "Milage",
    xlim = c(2.5, 5),
    ylim = c(15, 30),
    main = "Weight vs Milage"
)

# 示例3  散点图矩阵 pairs(formula, data)
pairs(
    ~wt+mpg+disp+cyl,
    data = mtcars, 
    main = "Scatterplot Matrix"
)


