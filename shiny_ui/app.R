library(shiny)
library(bslib)

# Define UI ----
ui <- page_sidebar(
    title = "title panel",
    sidebar = sidebar("sidebar"), #position参数可以设置侧边栏的位置，默认是左边，可以设置为右边
    value_box(
        title = "Value box",
        value = 100,
        showcase = bsicons::bs_icon("bar-chart"),
        theme = "teal"
    ),
    card(
        card_header("Card Header"),
        card_body("Card Body"),
        card_footer("Card Footer")
    ),
    card("Another card")
)

# Define server logic ----
server <- function(input, output) {
    
}

# Run the app ----
shinyApp(ui = ui, server = server)