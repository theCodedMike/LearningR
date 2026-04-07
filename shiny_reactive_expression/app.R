# install package quantmod
#install.packages("quantmod")

# Load packages ----
library(shiny)
library(bslib)
library(quantmod)

# Source helpers ----
source("helpers.R")

# User interface ----
ui <- page_sidebar(
    title = "stockVis",
    sidebar = sidebar(
        helpText(
            "Select a stock to examine.

        Information will be collected from Yahoo finance."
        ),
        textInput("symb", "Symbol", "SPY"),
        dateRangeInput(
            "dates",
            "Date range",
            start = "2013-01-01",
            end = as.character(Sys.Date())
        ),
        br(),
        br(),
        checkboxInput(
            "log",
            "Plot y axis on log scale",
            value = FALSE
        ),
        checkboxInput(
            "adjust",
            "Adjust prices for inflation",
            value = FALSE
        )
    ),
    card(
        card_header("Price over time"),
        plotOutput("plot")
    )
)

# Server logic
server <- function(input, output) {
    dataInput <- reactive({
        getSymbols(
            input$symb,
            src = "av",
            from = input$dates[1],
            to = input$dates[2],
            #api.key = "YOUR_API_KEY",
            auto.assign = FALSE
        )
    })
    
    
    finalInput <- reactive({
        if (!input$adjust) 
            return(dataInput())
        adjust(dataInput())
    })
    
    output$plot <- renderPlot({
        chartSeries(
            finalInput(),
            theme = chartTheme("white"),
            type = "line",
            log.scale = input$log,
            TA = NULL
        )
    })
}

# Run the app
shinyApp(ui, server)


# Recap
#A reactive expression takes input values, or values from other reactive expressions, and returns a new value
#Reactive expressions save their results, and will only re-calculate if their input has changed
#Create reactive expressions with reactive({ })
#Call reactive expressions with the name of the expression followed by parentheses ()
#Only call reactive expressions from within other reactive expressions or render* functions
