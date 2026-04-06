#中文支持
#Linux字体目录: 一般在/usr/share/fonts下，可以使用 fc-list命令查看
#Windows字体目录: C:\Windows\Fonts
#Mac字体目录: /Library/Fonts和/System/Library/Fonts

#查看系统支持的字体库
install.packages("showtext")
library("showtext")
font_files()
#使用某个字体
#pie3D(info,labels = names,explode = 0.1, main = "3D 图",family = "ArialUnicodeMS")

# 加载本地字体
#font_add("SyHei", "./SourceHanSansSC-Bold.otf") #字体名称和文件路径