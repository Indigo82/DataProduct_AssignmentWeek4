library(shiny)

shinyUI(fluidPage(
  titlePanel("Air passenger data"),
  sidebarLayout(
    sidebarPanel(
            # Select whether to overlay smooth trend line
            sliderInput(inputId = "smootherpara", label = "Smoothing parameter", min = 0, max = 1, value = .5)
    ),
    mainPanel(
            plotOutput(outputId = "lineplot")
    )
  )
))


#submitButton