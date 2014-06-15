# ui.R

shinyUI(fluidPage(
  titlePanel("Housing Market: Median Home Price (MHP) to Median Household Income (MHI) Ratio"),
  
  sidebarLayout(
    sidebarPanel(
      #helpText("Median Home Price to Median Income Ratio"),
      
      selectInput("var", 
        label = "Choose a variable to display",
        choices = c("US", "Northeast",
          "Midwest", "South","West"),
        selected = "US"),
      
      sliderInput("y", "Year:", min = 1975, max = 2012, value =  				 1993, step = 1),
      submitButton("Submit")

    ),
    
    mainPanel(
      textOutput("text1"),
    # Show the caption and plot of the requested variable against mpg
      h3(textOutput("caption")),
      plotOutput("RatioPlot"),
      textOutput("text2"),
      h4("Box Plot for the Years 1975-2012"),
      plotOutput("BoxPlot"),
      
      h5("RATIO FOR THE SELECTED YEAR"),
      textOutput("text3"),
      tableOutput("view")
    

    )
  )
))
