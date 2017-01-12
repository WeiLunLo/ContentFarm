library(shiny)

shinyUI(
  navbarPage(theme = shinytheme("united"),
             "內容農場的秘密讓全台灣都驚呆了!",
             tabPanel("緣起",
                      fluidPage(
                        img(src="https://weilunlo.github.io/ContentFarm/ContentFarm/image/slide/cover.png" ,width="600"),
                        div(
                        h2("「內容農場（Content Farm）是指以取得網路流量為主要目標，圖謀網路廣告等商業利益的專業公司」",style = "color:#930000"),
                        h3("被歸為內容農場的網站藉由渲染力強的標題吸引點閱率，其標題往往有以下特徵:"),
                        
                        h3("- 聳動 —語不驚人死不休", strong("「這件事讓十億人都驚呆了!」",style ="font-style: italic"),style = "color:#F75000"),
                        
                        h3("- 吊胃口 —話只說一半", strong("「在知道這件事後，她的反應令人驚訝!」",style ="font-style: italic"),style = "color:#F75000"),
                        
                        h3("- 羅列項目 —總是要列出好幾點", strong("「十個你不能錯過的絕美風景!」",style ="font-style: italic"),style = "color:#F75000"),
                        
                        h3("- 語氣誇張 —無論什麼主題都要搭配驚嘆語氣", strong("「………!!!!!!」",style ="font-style: italic"),style = "color:#F75000"),
                        br(),
                        h3("最近臉書上內容農場猖獗，版面上充斥著各種標題聳動的文章，然而點進去後內容往往令人大失所望。 不甘一再受騙，我們決定藉由這次報告探討內容農場的奧秘，想要討論的問題如下:"),
                        h3(strong("- 內容農場所下的標題有什麼常見的性質"),style = "color:#F75000"),
                        h3(strong("- 具有何種特性的標題比較能夠被關注"),style = "color:#F75000") , style = "color:black ; border-radius:5px" )
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
                                     br(),
                                     h4("印象中內容農場的標題總是喜好搭配特定標點符號，包刮驚嘆號(!)、刪節號(…)，因此我們決定針對該項目進行分析，探討是否確有其事。"),
                                     br(),
                                     img(src = "https://weilunlo.github.io/ContentFarm/ContentFarm/image/symbol/symbol.png"),
                                     h2(strong("驚嘆號「!」是每個農場下標時的必備元素，刪節號「…」則為躁咖之外的三個農場所用。")),
                                     h4("「瑞典的資源回收『台灣必須現在立馬跟進』，神到不可置信的效率連垃圾都已經缺貨了！」"),
                                     h4("「妻子在臨睡前暗示著丈夫『她想要離婚』，沒想到丈夫意料之外的回答讓她哭了一整夜…」"),
                                     h4("「這個學生『故意讓小偷拿走手機』，接著他就展開了追蹤整個後續的記錄片…！」")
                                    ),
                            tabPanel("各詞性的高頻詞",
                                     br(),
                                     h4("為了探究內容農場的標題為何格外吸引人點閱，我們決定分析其標題偏好使用的名詞、動詞、形容詞及副詞。"),
                                     br(),
                                     htmlOutput('part1'),
                                     htmlOutput('part2'),
                                     htmlOutput('part3'),
                                     htmlOutput('part4'),
                                     htmlOutput('partresult1'),
                                     htmlOutput('partresult2'),
                                     htmlOutput('partresult3')
                                     
                           ),
                            
                          tabPanel("高低迴響用詞分析",
                                   br(),
                                   h4("為了確認高低讚數的文的用詞是否不同，我們將依據得到的讚數高低把文章分成以下兩種，並各自做出頻率詞性表。"),
                                   h4("定義："),
                                   h4("高迴響文：該分享所得讚數之z分數其粉絲團中高於1。"),
                                   h4("低迴響文：該分享所得讚數之z分數其粉絲團中低於0。"),
                                   br(),
                                     htmlOutput('hl1'),
                                     htmlOutput('hl2'),
                                     htmlOutput('hl3'),
                                     htmlOutput('hl4')),
                            tabPanel("時間分析",
                                     br(),
                                     h4("除了用詞的差異外，我們也想知道是否貼文發布的時間會不會影響，所以以下我們將不同時間發布的貼文所得的讚數取其平均。"),
                                     br(),
                                     htmlOutput("time")),
                            tabPanel("標題長度",
                                     br(),
                                     h4("若一段標題有用越多的字，其所能帶來的訊息就越多，則該篇文章有可能得到更多的讚。我們以散布圖及讚數對標題長度的線性回歸直線來驗證這個問題。"),
                                     br(),
                                     htmlOutput('title1'),
                                     htmlOutput('title2'))
                          )
                        )
                      )
             ),
             tabPanel("預測模型",
                      h2("由於模型運算費時，此處僅展示簡介與成果。想親自玩玩的朋友可至",a(1)),
                      br(),
                      h2("支撐向量機(Support Vector Machine, SVM)"),
                      h3("SVM為一種分類工具，將資料轉換到特徵空間，然後找到超平面將資料劃分，最後就可以透過此模型快速的將資料分類。
                         我們利用SVM，將待判斷之標題和現有資料比對，預測其是否屬於那些高迴響數標題(超出1個Z分數的標題)。"),
                      h2("線性模型(Linear Model, LM)"),
                      h3("設定高回響標題之高頻詞表、標題長度、特殊標點及迴響程度等為迴歸項，與待判斷之標題進行線性回歸。預測其可能獲得的讚數。")
                      ),
             tabPanel("團隊分工")
             
  )
)