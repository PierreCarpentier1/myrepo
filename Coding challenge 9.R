#Coding Challenge 5
rm(list=ls())



library(fredr)
library(tidyverse)

api_key <- "abc"

fredr_set_key(api_key)

CSU <- fredr(
  series_id = "CSUSHPINSA"
)

USAU <- fredr(
  series_id = "USAUCSFRCONDOSMSAMID",
  observation_start = as.Date("1990-01-01"),
  observation_end = as.Date("2000-01-01")
)

USS <- fredr(
  series_id ="USSTHPI"
)

#Coding Challenge 10
rm(list = ls())
library(wooldridge)
library(tidyverse)
library(stargazer)

df <- hprice1
ols1 <- lm(price~ bdrms,data=df)
ols2 <- lm(price~ bdrms+lotsize+sqrft,data=df)
stargazer(ols1,ols2,type="text")

#for the average home in this dataset, we can reasonably expect that if you added an extra bedroom you would increase the expected selling price by $13.853 if we used the larger model however, if you added an extra bedroom you would increase the expected selling price by $62.025 if we used the smaller model

#we also need to take into account the statistical evidences of the two models, the p-values and the standard errors of the coefficients in order to choose which model would be the best but in such a case, expanding the model with relevant variables will only increase the accuracy of the latter