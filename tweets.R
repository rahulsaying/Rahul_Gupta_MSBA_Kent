library(twitteR)
download.file(url='http://curl.haxx.se/ca/cacert.pem', destfile='cacert.pem')
reqURL <- 'https://api.twitter.com/oauth/request_token'
accessURL <- 'https://api.twitter.com/oauth/access_token'
authURL <- 'https://api.twitter.com/oauth/authorize'
consumerKey <- "2Chr0e0npdMMXR4WTSyvV6CVb"
consumerSecret <- "ABWdXiY9M8LClZNd6i5qdGaReKKFZIIjGq2qYvEggdSzb0y4yg"
accessToken <- "2525490572-g4q8ABkNCq6ht2f1X7IhbRPoFRvFl6W8BqNQKTt"
accessTokenSecret <- "JjHkBuNhJxgQZR1iI3cbGhr4bCWxMuaKz5pZI6Mif4BbL"
setup_twitter_oauth(consumerKey, consumerSecret, accessToken,accessTokenSecret)

t<- search_twitter_and_store("trump", n =10, lang= "en")
t<- searchTwitteR ('iphone', n =100, lang= "en", resultType = "recent")
t <- searchTwitteR("#TexasChurchMassacre", n = 10 )
t <- searchTwitteR("#MondayMotivation", n = 10 )

#install.packages(c("devtools", "rjson", "bit64", "httr"))

#RESTART R session!

#library(devtools)
#t <- userTimeline("#TexasChurchMassacre", n=50 )
tdf <- twListToDF(t)
#View(tdf$text)
t <- tdf$text




