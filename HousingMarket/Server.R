# server.R
tempfile <- read.csv("PriceHouseratio.csv")
shinyServer(
  function(input, output) {
  
    output$text1 <- renderText({ 
      paste("YOU HAVE SELECTED:", input$var)
    })
    
    output$RatioPlot <- renderPlot({
    require(graphics)
    plot(tempfile[,1], tempfile[,input$var], main = "Years vs MNHP/MHI Ratio", xlab = "Years", ylab = "Ratio", las = 1)
    })
    
    output$text2 <- renderText({ 
      paste("YOU HAVE SELECTED:", input$var)
    })
    
    output$BoxPlot <- renderPlot({
      boxplot(tempfile[,input$var])
    })
    
    output$text3 <- renderText({ 
      paste("YOU HAVE CHOSEN THE YEAR:",
            input$y)
    })
    
    output$view <- renderTable({
    temp <- input$y - (tempfile[1,1] - 1)
    tempfile[temp,]
    })
    
   
})

    

