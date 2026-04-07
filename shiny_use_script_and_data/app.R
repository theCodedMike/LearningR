#安装helpers.R使用的包
#install.packages(c("maps", "mapproj"))

library(shiny)
library(bslib)
library(maps)
library(mapproj)

source("./helpers.R")
counties = readRDS("./data/counties.rds")
#print(counties)

# User interface ----
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

# Server logic ----
server = function(input, output) {
    output$map = renderPlot({
        data = switch (
            input$var,
            "Percent White" = counties$white,
            "Percent Black" = counties$black,
            "Percent Hispanic" = counties$hispanic,
            "Percent Asian" = counties$asian,
        )
        color = switch (
            input$var,
            "Percent White" = "darkgreen",
            "Percent Black" = "black",
            "Percent Hispanic" = "darkorange",
            "Percent Asian" = "darkviolet",
        )
        legend = switch (
            input$var,
            "Percent White" = "% White",
            "Percent Black" = "% Black",
            "Percent Hispanic" = "% Hispanic",
            "Percent Asian" = "% Asian",
        )
        
        percent_map(data, color, legend, input$range[1], input$range[2])
    })
}

# Run app ----
shinyApp(ui, server)


# Recap
#The directory that app.R appears in will become the working directory of the Shiny app
#Shiny will run code placed at the start of app.R, before the server function, only once during the life of the app.
#Shiny will run code placed inside server function multiple times, which can slow down the app.
