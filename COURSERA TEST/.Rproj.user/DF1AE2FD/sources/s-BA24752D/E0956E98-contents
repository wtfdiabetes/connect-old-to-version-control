#*************2020-03-27**************

#check the working directory
getwd()

setwd("C:/Users/hzhu/Desktop")
setwd("C:/Users/Mom/Documents/R Work 2020")
setwd("H:/CONFIDENTIAL EE DEMOGRAPHICS/EHP demographic analysis/var arrange")
# qA file location with the next getwd()
getwd()

#*************************************
# read the file into R system

# any file to be read-- temporary file name is EHP_1
# global environment
EHP_1 <- read.csv('dt_input_april2nd_2020.csv')
# summary is a summary direction!!
summary(EHP_1)

EHP_2 <- subset(EHP_1, select=c(tot.cost.variance.no.null, RISK_SCORE,workcode,CONTRACT_TYPE, salary.band))

EHP_2 <- subset(EHP_1, select=c(tot.cost.variance.no.null, workcode,CONTRACT_TYPE))

summary(EHP_2)



#*************************************


setwd("C:/Program Files/R")

install.packages("installr")

library(installr)

updateR()

#Decision Tree -- supporting tools
library('grid')
library('mvtnorm')
library('modeltools')
library('stats4')
library('strucchange')
library('zoo')
library('sandwich')

# install is the command to install the party package. only one time.
#install.packages('party')
# party is for decision tree
library('party')

library('party')
library('plyr')
library('readr')

libary (rpart)
library(rattle)
library(rpart.plot)
library(RColorBrewer)


# dx.cost.variance is the y variable.The items after squiggle is the 'x' variables
# ctree is like the group by -- special term
# model.tree -- can be changed to any other name
model.tree <- ctree(tot.cost.variance.no.null~., data=EHP_2)

mytree <- rpart(
  tot.cost.variance.no.null~., 
  data = EHP_2, 
  method = "class"
)




# after plot 
plot(model.tree)



install.packages("partykit")
