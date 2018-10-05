library(shiny)
library(dplyr)
library(readr)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
        output$lineplot <- renderPlot({
                plot(AirPassengers)
                observeEvent(input$add, {
                        lines(smooth.spline(AirPassengers, spar = input$smootherpara), col = "red")
                })
  })
})
