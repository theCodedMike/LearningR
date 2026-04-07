library(shiny)
library(bslib)

ui = page_fluid(
    titlePanel("Control widgets"),
    layout_columns(
        col_widths = 4,
        card(
            card_header("按钮"),
            actionButton("action", "点击"),
            submitButton("Submit")
        ),
        card(
            card_header("开关"),
            checkboxInput("checkbox", "Choice A", value = TRUE)
        ),
        card(
            card_header("多选开关"),
            checkboxGroupInput("check_group", "Select all that apply:",
                choices = list("Choice 1" = 1, "Choice 2" = 2, "Choice 3" = 3),
                selected = 1
            )
        ),
        card(
            card_header("日期"),
            dateInput("date", "Select Date:")
        ),
        card(
            card_header("日期范围"),
            dateRangeInput("date_range", "Select Date Range:")
        ),
        card(
            card_header("文件上传"),
            fileInput("file", "Upload File:")
        ),
        card(
            card_header("帮助信息"),
            helpText(
                "Note: help text isn't a true widget,",
                "but it provides an easy way to add text to",
                "accompany other widgets."
            )
        ),
        card(
            card_header("数字输入"),
            numericInput("num", "Enter a number:", value = 10, min = 0, max = 100)
        ),
        card(
            card_header("单项选择"),
            radioButtons("radio", "Select option:",
                choices = list("Option 1" = 1, "Option 2" = 2, "Option 3" = 3),
                selected = 1
            )
        ),
        card(
            card_header("下拉选"),
            selectInput("select", "Select option:",
                choices = list("Option 1" = 1, "Option 2" = 2, "Option 3" = 3),
                selected = 1
            )
        ),
        card(
            card_header("滑动条"),
            sliderInput("slider", "Set value:", min = 0, max = 100, value = c(25, 75))
        ),
        card(
            card_header("文本输入"),
            textInput("text", "Enter text:", value = "Enter text...")
        )
    )
)

server = function(input, output) {}

shinyApp(ui = ui, server = server)