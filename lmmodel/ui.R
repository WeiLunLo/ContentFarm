
library(shiny)

shinyUI(fluidPage(
  
  # Application title
  titlePanel("LM model demo"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      textInput("text", "Text:", "text here"),
      submitButton("Submit")
      
    ),
    
    # Show a plot of the generated distribution
    sidebarPanel(
      textOutput("prediction")
    )
    
  )
))
