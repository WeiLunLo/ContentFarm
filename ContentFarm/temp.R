library(shiny)

shinyUI(
  navbarPage(theme = shinytheme("united"),
             "內容農場",
             tabPanel("緣起",
                      fluidPage(
                        titlePanel("專案緣起"),
                        
                        h3("「內容農場（Content Farm）是指以取得網路流量為主要目標，圖謀網路廣告等商業利益的專業公司」", style = "color:red"),
                        h4("被歸為內容農場的網站藉由渲染力強的標題吸引點閱率，其標題往往有以下特徵:"),
                        
                        p("- 聳動—語不驚人死不休", strong("「這件事讓十億人都驚呆了!」")),
                        
                        p("- 吊胃口—話只說一半", strong("「在知道這件事後，她的反應令人驚訝!」")),
                        
                        p("- 羅列項目—總是要列出好幾點", strong("「十個你不能錯過的絕美風景!」")),
                        
                        p("- 語氣誇張—無論什麼主題都要搭配驚嘆語氣", strong("「………!!!!!!」")),
                        br(),
                        h4("最近臉書上內容農場猖獗，版面上充斥著各種標題聳動的文章，然而點進去後內容往往令人大失所望。 不甘一再受騙，我們決定藉由這次報告探討內容農場的奧秘，想要討論的問題如下:"),
                        p("- 內容農場所下的標題有什麼常見的性質"),
                        p("- 具有何種特性的標題比較能夠被關注")
                      )
             ),
             tabPanel("資料探索",
                      fluidPage(
                        titlePanel("資料探索"),
                        sidebarPanel(
                          selectInput("fanpage", label = h3("以來源區分"), 
                                      choices = list("Teepr趣味新聞" = "teepr","Bomb01" = "Bomb01",
                                                     "Ptt01" = "ptt01", "躁咖(EBCbuzz)" = "EBCbuzz"), 
                                      selected = "teepr"),
                          selectInput("part", label = h3("以詞性區分"), 
                                      choices = list("名詞" = "n","動詞" = "v",
                                                     "形容詞" = "a", "副詞" = "d"), 
                                      selected = "n"),
                          selectInput("react", label = h3("以迴響數區分"), 
                                      choices = list("高迴響數" = "h",
                                                     "低迴響數" = "l"), 
                                      selected = "h")
                        ),
                        mainPanel(
                          tabsetPanel(
                            tabPanel("濫用標點符號",
                                     img(src = "https://weilunlo.github.io/ContentFarm/ContentFarm/image/symbol/symbol.png"),
                                     h3("驚嘆號「!」是每個農場下標時的必備元素，刪節號「…」則為躁咖之外的三個農場所用。"),
                                     p("「瑞典的資源回收『台灣必須現在立馬跟進』，神到不可置信的效率連垃圾都已經缺貨了！」"),
                                     p("「妻子在臨睡前暗示著丈夫『她想要離婚』，沒想到丈夫意料之外的回答讓她哭了一整夜…」"),
                                     p("「這個學生『故意讓小偷拿走手機』，接著他就展開了追蹤整個後續的記錄片…！」")),
                            tabPanel("各詞性的高頻詞",
                                     
                                     htmlOutput('part1'),
                                     htmlOutput('part2'),
                                     htmlOutput('part3'),
                                     htmlOutput('part4'),
                                     
                                     h3("「大家」、「網友」、「人」為幾個常見用字，有製造輿論的效果。"),
                                     p("「 大家一開始看到這團棉花時還想說是誰弄掉了，結果看到棉花球「一抬起頭」時才發現是地表最萌驚喜！」"),
                                     p("「她問退伍的爺爺「中校12級退役大嗎？」， 網友都跪了…」")),
                            
                            tabPanel("高低迴響用詞分析",
                                     htmlOutput('hl1'),
                                     htmlOutput('hl2'),
                                     htmlOutput('hl3'),
                                     htmlOutput('hl4')),
                            tabPanel("時間分析",
                                     htmlOutput("time")),
                            tabPanel("標題長度",
                                     htmlOutput('title1'),
                                     htmlOutput('title2'))
                          )
                        )
                      )
             ),
             tabPanel("模型",
                      fluidPage(
                        titlePanel("模型"
                        ),
                        mainPanel(
                          tabsetPanel(
                            tabPanel("SVM",
                                     textOutput("prediction")),
                            tabPanel("LM",
                                     textOutput("prediction"))
                          )
                        )
                      )
             )
  )
)