#包
# 查看R包的安装目录
.libPaths() 
#"C:/Program Files/R/R-4.5.3/library"
#"C:/Users/xxx/AppData/Local/R/win-library/4.5"

# 查看已安装的包
library()

# 查看已载入的包
search()

# 安装新包
install.packages("XML", repos = "https://mirrors.ustc.edu.cn/CRAN/") #从CRAN网站上安装，可以使用国内镜像
install.packages("./XML_3.99-0.12.tar.gz") #从本地安装

# 使用包
library("包名")

