library(ISLR)
library(rpart)
MyData<-Carseats[,1:8]
str(MyData) # shows which variables are factor or numerical
Model_1=rpart (Sales~.,data=MyData, method='anova')
summary(Model_1)
