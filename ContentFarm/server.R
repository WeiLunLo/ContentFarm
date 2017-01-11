library(shiny)
source("global.R")
server <- function(input, output,session) {
  
  output$part1 = renderUI({
    titlepart1 = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/",input$part,"/teepr_",input$part,".png")
    tags$img(src = titlepart1) 
  })
  
  output$part2 = renderUI({
    titlepart2 = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/",input$part,"/Bomb01_",input$part,".png")
    tags$img(src = titlepart2) 
  })
  
  output$part3 = renderUI({
    titlepart3 = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/",input$part,"/ptt01_",input$part,".png")
    tags$img(src = titlepart3) 
  })
  
  output$part4 = renderUI({
    titlepart4 = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/",input$part,"/EBCbuzz_",input$part,".png")
    tags$img(src = titlepart4) 
  })
  
  output$title1 = renderUI({
    titlepath1 = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/scatter/dist_",input$fanpage,".png")
    tags$img(src = titlepath1) 
  })
  
  output$title2 = renderUI({
    titlepath2 = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/rg/lm_",input$fanpage,".png")
    tags$img(src = titlepath2) 
  })
  
  output$time = renderUI({
    timepath = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/timeavg/time_",input$fanpage,".png")
    tags$img(src = timepath) 
  })
  
  
  
}