library(shiny)
source("global.R")
server <- function(input, output,session) {
  
  output$title = renderUI({
    title = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/rg/lm_",input$title,".png")
    tags$img(src = input$title)  
  })
  
  
  
}