library(shiny)

shinyUI(
  navbarPage(theme = shinytheme("united"),
             "內容農場",
             tabPanel("緣起",
                      fluidPage(
                        titlePanel("專案緣起"),
                    
                        h3("「內容農場（Content Farm）是指以取得網路流量為主要目標，圖謀網路廣告等商業利益的專業公司」", style = "color:red"),
                        h4("被歸為內容農場的網站藉由渲染力強的標題吸引點閱率，其標題往往有以下特徵:"),

                        p("- 聳動—語不驚人死不休 「這件事讓十億人都驚呆了!」"),
                          
                        p("- 吊胃口—話只說一半 「在知道這件事後，她的反應令人驚訝!」"),
                          
                        p("- 羅列項目—總是要列出好幾點 「十個你不能錯過的絕美風景!」"),
                          
                        p("- 語氣誇張—無論什麼主題都要搭配驚嘆語氣 「………!!!!!!」"),
                        br(),
                        h4("最近臉書上內容農場猖獗，版面上充斥著各種標題聳動的文章，然而點進去後內容往往令人大失所望。 不甘一再受騙，我們決定藉由這次報告探討內容農場的奧秘，想要討論的問題如下:"),
                        p("- 內容農場所下的標題有什麼常見的性質"),
                        p("- 具有何種特性的標題比較能夠被關注")
                      )
             ),
             tabPanel("資料探索",
                      fluidPage(
                        titlePanel("資料探索"),
                        sidebarPanel(),
                        mainPanel(
                          tabsetPanel(
                            tabPanel("詞頻表"),
                            tabPanel("濫用標點符號"),
                            tabPanel("詞性的高頻詞"),
                            tabPanel("用詞分析"),
                            tabPanel("時間分析"),
                            tabPanel("標題長度"),
                            tabPanel("關鍵字查詢系統")
                          )
                        )
                      )
             ),
             tabPanel("模型",
                      fluidPage(
                        titlePanel("模型"),
                        sidebarPanel(),
                        mainPanel(
                          tabsetPanel(
                            tabPanel("SVM"),
                            tabPanel("LM")
                          )
                        )
                      )
             )
  )
)