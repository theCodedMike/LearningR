library(shiny)
library(bslib)

# Define UI ----
ui = page_sidebar(
    title = "My Shiny App",
    sidebar = sidebar(
        "Shiny is available on CRAN, so you can install it in the usual way from your R console:",
        code('install.packages("shiny")')
    ),
    card(
        card_header("Introducing Shiny"),
        card_body(
            "Shiny is a package from Posit that makes it incredibly easy to build interactive web applications with R. For an introduction and live examples, visit the Shiny homepage (https://shiny.posit.co).",
            min_height = 100
        ),
        card_image("./dog_and_duck.jpg", height = 500),
        card_footer("Shiny is a product of Posit.")
    )
)

# Define server logic ----
server = function(input, output) {}

# Run the app ----
shinyApp(ui = ui, server = server)
