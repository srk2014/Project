library(shiny)
library(datasets)

shinyServer(function(input,output){
  
  datasetInput <- reactive({
    switch(input$dataset,"sunspots" = sunspots, "discoveries" = discoveries, "nhtemp" = nhtemp)
    
  })
  
  output$distPlot <- renderPlot({
    dataset <- datasetInput()
    require(graphics)
    plot(dataset, main = "Time Series", xlab = "Years", ylab = "Units", las = 1)
  })
})