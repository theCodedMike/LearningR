library(shiny)
library(bslib)

ui = page_sidebar(
    title = "censusVis",
    sidebar = sidebar(
        helpText(
            "Create demographic maps with information from the 2010 US Cenusu."
        ),
        selectInput(
            "var", "Choose a variable to display:",
            choices = c(
                "Percent White" = 1, 
                "Percent Black" = 2, 
                "Percent Hispanic" = 3, 
                "Percent Asian" = 4
            ),
            selected = "Percent White"
        ),
        sliderInput(
            "range", "Range of interest:",
            min = 0, max = 100, value = c(0, 100)
        )
    ),
    
    textOutput("selected_var"),
    textOutput("slider_val")
)

server = function(input, output) {
    output$selected_var = renderText({
        paste("You have selected", input$var)
    })
    
    output$slider_val = renderText({
        paste("You have chosen a range that goes from", input$range[1], "to", input$range[2])
    })
}

shinyApp(ui = ui, server = server)