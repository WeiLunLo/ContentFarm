library(shiny)
source("global.R")

shinyServer(
  function(input, output) {
  
  #part
  output$part1 <- renderUI({
    titlepart1 = paste("https://weilunlo.github.io/ContentFarm/ContentFarm/image/",input$part,"/teepr_",input$part,".png",sep = "")
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
  #hl
  output$hl1 = renderUI({
    titlehl1 = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/",input$part,"/teepr_",input$react,"_",input$part,".png")
    tags$img(src = titlehl1) 
  })
  output$hl2 = renderUI({
    titlehl2 = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/",input$part,"/Bomb01_",input$react,"_",input$part,".png")
    tags$img(src = titlehl2) 
  })
  output$hl3 = renderUI({
    titlehl3 = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/",input$part,"/ptt01_",input$react,"_",input$part,".png")
    tags$img(src = titlehl3) 
  })
  output$hl4 = renderUI({
    titlehl4 = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/",input$part,"/EBCbuzz_",input$react,"_",input$part,".png")
    tags$img(src = titlehl4) 
  })
  
  #title
  output$title1 = renderUI({
    titlepath1 = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/scatter/dist_",input$fanpage,".png")
    tags$img(src = titlepath1) 
  })
  output$title2 = renderUI({
    titlepath2 = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/rg/lm_",input$fanpage,".png")
    tags$img(src = titlepath2) 
  })
  
  #time
  output$time = renderUI({
    timepath = paste0("https://weilunlo.github.io/ContentFarm/ContentFarm/image/timeavg/time_",input$fanpage,".png")
    tags$img(src = timepath)
  })
  
  output$partresult1 = renderUI({
    if (input$fanpage == "teepr"){
      tags$h2("Teepr")
    }else if(input$fanpage == "Bomb01") {
      tags$h2("Bomb01")
    }else if(input$fanpage == "ptt01") {
      tags$h2("Ptt01")
    }else {
      tags$h2("EBCbuzz")
    }
  })
  output$partresult2 = renderUI({
    if (input$part == "n"){
      tags$h4("「大家」、「網友」、「人」為幾個常見用字，有製造輿論的效果。")
    }else if(input$part == "v") {
      tags$h4("「讓」榮登農場最愛用動詞。")
    }else if(input$part == "a") {
      tags$h4("「大」強調程度不一般，可以強化渲染力。 ")
    }else {
      tags$h4("大量使用「都」字，營造「大家一致認可」的感覺。")
    }
  })
  output$partresult3 = renderUI({
    if (input$part == "n"){
      tags$h4("例：「 大家一開始看到這團棉花時還想說是誰弄掉了，結果看到棉花球「一抬起頭」時才發現是地表最萌驚喜！」")
    }else if(input$part == "v") {
      tags$h4("例：「他在17歲「變性成女生」後竟淪落到賣淫自殘，1年後決定「重返男兒身」的他 讓大家都看傻了！」")
    }else if(input$part == "a") {
      tags$h4("例：「艾迪瑞德曼「比電影還精彩」真實背景 大揭密！貴族家庭出身的他說「很對不起威廉王子…」」")
    }else {
      tags$h4("例：「她騎著哈雷機車跟男友單膝下跪求婚，說完會加碼送房產後「一轉頭」…大家 都發出哇一聲！」")
    }
  })
})