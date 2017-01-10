library(shiny)

ui <- fluidPage(
  
  # Application title
  titlePanel("LM model demo"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
    sidebarPanel(
      textInput("text", "Text:", "text here"),
      actionButton("go", "Go")
    ),
    
    # Show a plot of the generated distribution
    sidebarPanel(
      textOutput("prediction")
    )
    
  )
)