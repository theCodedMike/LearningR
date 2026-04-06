#饼图
#pie(x, labels = names(x), edges = 200, radius = 0.8,
#    clockwise = FALSE, init.angle = if(clockwise) 90 else 0,
#    density = NULL, angle = 45, col = NULL, border = NULL,
#    lty = NULL, main = NULL, …)
#x: 数值向量，表示每个扇形的面积
#labels: 字符型向量，表示各扇形面积标签
#edges: 圆的边数，默认为200
#radius: 圆的半径，默认为0.8
#clockwise: 是否顺时针绘制，默认为FALSE（逆时针）
#init.angle: 圆的起始角度，默认为0（从3点开始）
#density: 数值向量，表示底纹的密度
#angle: 数值向量，设置底纹的斜率
#col: 颜色向量，表示每个扇形的颜色
#border: 颜色向量，表示每个扇形边界的颜色
#lty: 数值向量，表示每个扇形边界的线
#main: 字符串，表示图表的标题
install.packages("httpgd")
library("httpgd")
info = c(1, 2, 4, 8)
names = c("A", "B", "C", "D")
cols = c("#ED1C24", "#22B14C", "#FFC90E", "#3f48CC")
# 示例1
#1直接输出为饼状图
pie(info, labels = names, col = cols)
#2输出为图片 png/jpeg/bmp可选
png("pie_chart.png", width = 300, height = 300)
pie(info, labels = names, col = cols)

# 示例2
percentages = paste(round(100 * info / sum(info)), "%") #计算百分比
pie(info, labels = percentages, main = "市场占比", col = cols, family = "GB1")
legend("topright", names, cex = 0.8, fill = cols)

# 3D饼图
#安装plotrix包
install.packages("plotrix")
any(grepl("plotrix", installed.packages()))
library("plotrix")
pie3D(
    info,
    labels = names,
    explode = 0.1,
    main = "3D市场占比",
    family = "STHeitiTC-Light"
)

#关闭图形设备
dev.off()
