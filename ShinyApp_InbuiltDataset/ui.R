library(shiny)

#Define UI for dataset viewer application
shinyUI(pageWithSidebar(
  
  #Application title
  headerPanel ("Data set"),
  
  #Options set from Dataset - Datasets considered: Number of Sunspots, Number of Discoveries, New Haven Temp
  sidebarPanel(
    selectInput("dataset", "Choose a dataset:", choices = c("sunspots","discoveries","nhtemp"))
  ),
  
  mainPanel(
    plotOutput("distPlot")
  )
))