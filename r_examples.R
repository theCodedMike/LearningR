# 示例
# 计算平均值
#mean(x, trim = 0, na.rm = FALSE, ...)
#trim: 在首尾分别去除异常值，取值范围为0~0.5之间。
#      比如向量中有10个元素，trim为0.2，则首尾各去除2个(排序后)
#na.rm: 是否删除输入向量中的缺失值NA, TRUE表示删除
example_nums = c(1, 3, 5, 7, 9, -3, 10, -5, 21, 8)
#排序后: -5, -3, 1, 3, 5, 7, 8, 9, 10, 21
mean(example_nums) #5.6
mean(example_nums, trim = 0.2) #5.5 先排序后剔除
#-5, -3, 1, 3, 5, 7, 8, 9, 10, 21
mean(c(1, 3, 5, 7, 8, 9)) #5.5


# 计算中位数
#median(x, na.rm = FALSE)
median(example_nums) #6


# 计算出现次数最多的元素
get_most = function(x) {
    v = unique(x)
    v[which.max(tabulate(match(x, v)))]
}
get_most(c(1, -1, 1, 2, 1, 3)) #1


# 线性回归
#lm(formula,data)
height = c(151, 174, 138, 186, 128, 136, 179, 163, 152, 131)
weight = c(63, 81, 56, 91, 47, 57, 76, 72, 62, 48)
relation = lm(weight~height)
#Call:
#    lm(formula = weight ~ height)
#Coefficients:
#    (Intercept)       height  
#-38.4551       0.6746

summary(relation)
#Call:
#    lm(formula = weight ~ height)
#Residuals:
#    Min      1Q  Median      3Q     Max 
#-6.3002 -1.6629  0.0412  1.8944  3.9775 
#Coefficients:
#    Estimate Std. Error t value Pr(>|t|)    
#(Intercept) -38.45509    8.04901  -4.778  0.00139 ** 
#    height        0.67461    0.05191  12.997 1.16e-06 ***
#    ---
#    Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#Residual standard error: 3.253 on 8 degrees of freedom
#Multiple R-squared:  0.9548,	Adjusted R-squared:  0.9491 
#F-statistic: 168.9 on 1 and 8 DF,  p-value: 1.164e-06

predict(relation, data.frame(height = 170)) #76.22869

plot(
    height, weight, col = "blue", main = "体重与身高的关系",
    abline(relation), cex = 1.3, pch = 16, xlab = "Height in Cm",
    ylab = "Weight in Kg"
)



