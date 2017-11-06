library(twitteR)
library(NLP)
library(tm)
library(purrr)
library(ROAuth)
library(bitops)
library(RCurl)
library(RColorBrewer)
library(wordcloud)
library(plyr)
library(stringr)
library(readr)
library(dplyr)
#t <- read_file("C:/Users/rahul/Documents/GitHub/Rahul_Gupta_MSBA_Kent/iphonex.txt")

pos.words = scan('C:/Users/rahul/Documents/GitHub/Rahul_Gupta_MSBA_Kent/positive_words.txt', what = 'character', comment.char = ';')
neg.words = scan('C:/Users/rahul/Documents/GitHub/Rahul_Gupta_MSBA_Kent/negative_words.txt', what = 'character', comment.char = ';')
t <- gsub('[[:punct:]]', "", t)   ## removing punctuations
t <- gsub('[[:cntrl:]]', "", t)   ## removing control words
t <- gsub('\\d+', "", t)          ## removing digits
t <- tolower(t)                   ## making lower case
word.list <- str_split(t, '\\s+')  ## splitting into words and making list
words <- unlist(word.list)          ## list to be converted into vector
pos.matches0 <- match(words, pos.words)
neg.matches0 <- match(words, neg.words)
pos.matches <- !is.na(pos.matches0)
neg.matches <- !is.na(neg.matches0)
score <- sum(pos.matches) - sum(neg.matches)
score
wordcloud(t, colors = rainbow(3))
wordcloud(t, random.order = FALSE)
wordcloud(words, min.freq = 0, random.order = FALSE)
