#BA project 
install.packages("pROC")
install.packages("VIM")
library(dplyr)
library(pROC)
library(VIM)
churnTrain = read.csv("~/GitHub/Rahul_Gupta_MSBA_Kent/Churn_Train.csv")
# missing_data <-  colMeans(is.na(churnTrain))
#missing_data
#missing_dropped<-churnTrain[complete.cases(churnTrain),]
#missing_dropped
#colMeans(is.na(missing_dropped))
#churnTrain1 = read.csv("~/GitHub/Rahul_Gupta_MSBA_Kent/Churn_Train.csv")
#Model1<-lm(formula = Binary_Churn~.,data=churnTrain1)

summary(churnTrain) #view summary statistics of churnTrain
churnTrain.unique<-churnTrain[!duplicated(churnTrain),] #Finds and Removes Duplicates
summary(churnTrain.unique) #view summary statistics
hist(churnTrain.unique$number_vmail_messages)
churnTrain.unique$number_vmail_messages[churnTrain.unique$number_vmail_messages < 0] <- NA #replaces negative values in this column with NA
library(VIM)
colMeans(is.na(churnTrain.unique))

missing_imputed_knn<-kNN(churnTrain.unique,k=4)

colMeans(is.na(missing_imputed_knn))

churnTrain2<-missing_imputed_knn[,c(1:20)] #removes the 20 columns added via kNN

churnTrain2$churn=factor(churnTrain2$churn,levels(churnTrain2$churn)[c(2,1)]) #re-orders the levels

Model=glm(churn~.,family = "binomial",data=churnTrain2) #creates a Logistic Regression to predict Churn using all Variables

summary(Model)  #Shows a Summary of "Model"

Predicted_Values<-predict(Model, newdata=churnTrain2,type='response')

roc(churnTrain2$churn, Predicted_Values)

plot(roc(churnTrain2$churn, Predicted_Values),col='red',lwd=3)


Tournament_Week2_Test=read.csv("C:/Users/rahul/Documents/GitHub/Rahul_Gupta_MSBA_Kent/Tournament_week2_Test.csv") #creates a R dataframe from Excel

predict(Model,Tournament_Week2_Test,type='response')

library (cvTools)

