library(shiny)
library(tm)
library(e1071)
library(MLmetrics)
library(dplyr)
library(jiebaR)

cutter <- worker(dict = "www/jieba.dict.utf8", hmm = "www/hmm_model.utf8", user = "www/user.dict.utf8",
                 idf = "www/idf.utf8", stop_word ="www/stop_words.utf8", bylines = T)

teepr2 <- "https://weilunlo.github.io/KTVcaculator/testKTVcalculator/teepr.csv"
teepr <- read.csv(teepr2)
