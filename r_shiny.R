#Shiny
# 安装包
install.packages("shiny")
# 验证包是否安装
any(grepl("shiny", installed.packages())) #TRUE
any(grepl("bslib", installed.packages())) #TRUE

# 载入包
library(shiny)

# 查看官方提供的示例1
#runExample("01_hello", display.mode = "showcase")      # a histogram
#runExample("02_text", display.mode = "showcase")       # tables and data frames
#runExample("03_reactivity", display.mode = "showcase") # a reactive expression
#runExample("04_mpg", display.mode = "showcase")        # global variables
#runExample("05_sliders", display.mode = "showcase")    # slider bars
#runExample("06_tabsets", display.mode = "showcase")    # tabbed panels
#runExample("07_widgets", display.mode = "showcase")    # help text and submit buttons
#runExample("08_html", display.mode = "showcase")       # Shiny app built from HTML
#runExample("09_upload", display.mode = "showcase")     # file upload wizard
#runExample("10_download", display.mode = "showcase")   # file download wizard
#runExample("11_timer", display.mode = "showcase")      # an automated timer

# 运行本地web应用
#运行方式1: 运行以下的代码
#runApp("1_hello", display.mode = "normal") #"01_hello"是目录的名字
#  display.mode: normal(默认值，页面不显示代码)，而showcase会显示代码
#运行方式2: 打开app.R文件，然后Ctrl+Shift+Enter
