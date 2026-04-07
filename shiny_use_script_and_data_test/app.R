
library(shiny)
library(bslib)
library(maps)
library(mapproj)

source("../shiny_use_script_and_data/helpers.R")
counties = readRDS("../shiny_use_script_and_data/data/counties.rds")


ui = page_sidebar(
    title = "censusVis",
    
    sidebar = sidebar(
        helpText(
            "Create demographic maps with information from the 2010 US Census."
        ),
        selectInput(
            "var",
            label = "Choose a variable to display:",
            choices =
                c(
                    "Percent White",
                    "Percent Black",
                    "Percent Hispanic",
                    "Percent Asian"
                ),
            selected = "Percent White"
        ),
        sliderInput(
            "range",
            label = "Range of interest:",
            min = 0, 
            max = 100, 
            value = c(0, 100)
        )
    ),
    
    card(
        plotOutput("map")
    )
)

server = function(input, output) {
    output$map = renderPlot({
        args = switch (
            input$var,
            "Percent White" = list(counties$white, "darkgreen", "% White"),
            "Percent Black" = list(counties$black, "black", "% Black"),
            "Percent Hispanic" = list(counties$hispanic, "darkorange", "% Hispanic"),
            "Percent Asian" = list(counties$asian, "darkviolet", "% Asian")
        )
        
        percent_map(args[[1]], args[[2]], args[[3]], input$range[1], input$range[2])
    })
}


shinyApp(ui, server)
