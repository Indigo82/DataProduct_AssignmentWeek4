library(shiny)


# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
        output$lineplot <- renderPlot({
                plot(AirPassengers)
                lines(smooth.spline(AirPassengers, spar = input$smootherpara), col = "red")
  })
})
