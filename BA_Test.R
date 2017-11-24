X=c(61,63,67,69,70,74,76,81,86,91,95,97)
Y=c(4.28,4.08,4.42,4.17,4.48,4.3,4.82,4.7,5.11,5.13,5.64,5.56)
plot(X,Y,xlim=c(60, 100),xlab="Number of Passengers", ylab="Cost ($1000)", col="blue")
abline(lsfit(X, Y),col = "red")
Model=lm(Y ~X)
Model
Model$coefficients
Model$residuals
Model$fitted.values
summary(Model)
Rentals=c(710, 529,314,504,619,428,317,205,468,545,607,694)
Average_Family_Income_k=c(65,43,29,47,52,50,46,29,31,43,49,64)
model = lm(Rentals ~ Average_Family_Income_k)
summary(model)
Distance=c(365,1462,1285,1096,517,1686,932,1160)
Duration=c(1.167,2.333,2.25,2.083,2.25,2.833,1.917,2.167)
Model <- lm(Duration ~ Distance)
Model
summary(Model)
0.0008387*978+1.23358
pri <- predict(Model,data.frame(Distance=978))
pri <- predict(Model,data.frame(Duration = 2.053817))

Model <- lm(Distance ~ Duration)
predict(Model, data.frame(Duration = 2.053817))
install.packages("ISLR")
library(ISLR)
Model_New <- lm(Carseats$Price ~ Carseats$CompPrice)
summary(Model_New)
No_Pass_X=c(61,63,67,69,70,74,76,81,86,91,95,97)
Cost_Y=c(4.28,4.08,4.42,4.17,4.48,4.3,4.82,4.7,5.11,5.13,5.64,5.56)
Model=lm(Cost_Y~No_Pass_X)
summary(Model)
Y_hat=predict(Model, data.frame(No_Pass_X=c(84)))
Y_hat
predict(Model, data.frame(No_Pass_X= 84, interval = "prediction", level = 0.95))
Market_Price_K=c(63,65.1,69.9,76.8,73.9,77.9,74.9,78,79,83.4,79.5,83.9,79.7,84.5,96,109.5,102.5,121,104.9,128,129,117.9,140)
Square_Feet=c(1605,2489,1553,2404,1884,1558,1748,3105,1682,2470,1820,2143,2121,2485,2300,2714,2463,3076,3048,3267,3069,4765,4540)
House_Age=c(35,45,20,32,25,14,8,10,28,30,2,6,14,9,19,4,5,7,3,6,10,11,8)
Model=lm(Market_Price_K~Square_Feet+House_Age)
summary(Model)