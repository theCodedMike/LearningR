# Output function	      Creates
#dataTableOutput           DataTable
#htmlOutput                raw HTML
#imageOutput               image
#plotOutput                plot
#tableOutput               table
#textOutput                text
#uiOutput                  raw HTML
#verbatimTextOutput        text

# render function             creates
#renderDataTable           DataTable
#renderImage               images (saved as a link to a source file)
#renderPlot                plots
#renderPrint               any printed output
#renderTable               data frame, matrix, other table like structures
#renderText                character strings
#renderUI                  a Shiny tag object or HTML

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
                "Percent White", 
                "Percent Black", 
                "Percent Hispanic", 
                "Percent Asian"
            ),
            selected = "Percent White"
        ),
        sliderInput(
            "range", "Range of interest:",
            min = 0, max = 100, value = c(0, 100)
        )
    ),
    
    textOutput("selected_var")
)

server = function(input, output) {
    output$selected_var = renderText({
        paste("You have selected", input$var)
    })
}

shinyApp(ui = ui, server = server)