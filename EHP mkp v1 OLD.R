#*************2020-03-27**************

#check the working directory
getwd()

setwd("C:/Users/hzhu/Desktop")
setwd("H:/CONFIDENTIAL EE DEMOGRAPHICS/EHP demographic analysis/var arrange")
# qA file location with the next getwd()
getwd()

#*************************************
# read the file into R system

# any file to be read-- temporary file name is EHP_1
# global environment
EHP_1 <- read.csv('EHP file for Decision Tree Test-Heidi-20200327.csv')
# summary is a summary direction!!
summary(EHP_1)

EHP_2 <- subset(EHP_1, select=c(DX.Cost.Variance,AGE,GENDER,RISK_SCORE,
                                WorkDescr,salary.band,ASTH,COPD,DM,Job.Family))

summary(EHP_2)



#*************************************

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

# dx.cost.variance is the y variable.The items after squiggle is the 'x' variables
# ctree is like the group by -- special term
# model.tree -- can be changed to any other name
model.tree <- ctree(DX.Cost.Variance~., data=EHP_2)

# after plot 
plot(model.tree)


