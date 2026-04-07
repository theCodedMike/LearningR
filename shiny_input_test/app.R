library(shiny)
library(bslib)

ui = page_sidebar(
    title = "censusVis",
    sidebar = sidebar(
        helpText(
            "Create demographic maps",
            "with information from the",
            "2010 US Census."
        ),
        selectInput(
            "select", "Choose a variable to display:",
            choices = list(
                "Percent White" = 1, 
                "Percent Black" = 2, 
                "Percent Hispanic" = 3, 
                "Percent Asian" = 4
            ),
            selected = 1
        ),
        sliderInput(
            "slidar", "Range of interest",
            min = 0, max = 100, value = c(0, 100)
        )
    )
)

server = function(input, output) {
    
}

shinyApp(ui, server)
