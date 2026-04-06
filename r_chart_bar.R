#条形图
#barplot(H,xlab,ylab,main, names.arg,col,beside)
#H: 图表用的数字值，每个数值表示矩形条的高度
#xlab: x轴标签
#ylab: y轴标签
#main: 图表标题
#names.arg: 每个矩形条的标签
#col: 矩形条的颜色
#beside: 是否将矩形条分开显示，默认为FALSE，即堆叠显示
#legend: 是否显示右上角的图例，默认为FALSE

profits = c(100, 980, -1300, 400, 1500)
colors = col=c("#ED1C24","#22B14C","#FFC90E","#3F48CC","#FF00FF")
marks = matrix(
    c(90, 95, 70, 98, 90, 67), 2, 3
)
#示例1
barplot(profits)
#示例2
barplot(
    profits,
    xlab = "年份",
    ylab = "利率",
    main = "历年利润变化图",
    names.arg = c("2018", "2019", "2020", "2021", "2022"),
    col = colors,
    family = "GB1"
)
#示例3
install.packages("showtext")
library("showtext")
showtext_begin();
colnames(marks) = c("语文", "数学", "英语")
rownames(marks) = c("初一", "初二")
barplot(
    marks, 
    main = "小明成绩变化图", 
    beside = TRUE, #如果为FALSE，数据是竖排而不是横排
    legend = TRUE,
    col = c("blue", "green"),
    family = "GB1"
)
showtext_end()


#关闭图形设备
dev.off()


















