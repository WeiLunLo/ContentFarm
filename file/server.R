library(shiny)
source("global.R")
server <- function(input, output) {
  
  output$prediction <- renderPrint({
    input$go
    test <- isolate(input$text)
    t.word <- as.character(teepr$title)
    t.word <- c(t.word, test)
    teepr_words = lapply(t.word, function(x) segment(x, cutter))
    d.corpus <- Corpus(VectorSource(teepr_words))
    d.corpus <- tm_map(d.corpus, removeNumbers)
    tdm <- TermDocumentMatrix(d.corpus, control = list(wordLengths = c(1,10)))
    tdmMatrix <- as.matrix(tdm)
    
    t <- as.data.frame(tdmMatrix)
    t1 <- apply(t, 1, sum)
    t2 <- cbind(t, t1)
    names(t2)[2848] <- "smr"
    t3 <- t2[order(-t2$smr), ]
    t3 <- t3[1:300, ]
    t4 <- t(t3)
    t4 <- t4[-2848, ]
    #process the teepr for setting z_like >= 1 as y, others are n. And set it as factor for SVM
    teepr2 <- mutate(teepr, z_1 = ifelse(z_like >= 1, "y", "n"))
    teepr2$z_1 <- as.factor(teepr2$z_1)
    teepr2 <- rbind(teepr2, NA)
    teeprF <- cbind(teepr2, t4)
    
    feature2 <- teeprF[, c(5, 15:314)]
    index <- 1:nrow(teeprF)
    testindex <- sample(index, trunc(length(index)*30/100))
    trainset2 <- feature2[-testindex,]
    testset2 <- feature2[testindex,]
    fit <- lm(likes_count~. , data = trainset2)
    #summary(fit)
    kk <- feature2[2847, -1]
    row.names(kk) <- "predicted likes_count:"
    prediction <- predict(fit, kk)
    prediction
  })
}