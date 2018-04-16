
#Import dataset from excel
install.packages("readxl")
library(readxl)
mm <- read_excel("C:/R Projects/Micro_Mortgage.xlsx")

#Take only the valraibles we are interested.i.e. 
#Decision,Tier,Age,Yrsadd,Oldemi,FOIR,LTV

mm <- mm[, 2:8]

#Convert Target variable from Categorical to Binary
mm$Decision <- ifelse(mm$Decision=="Approve",1,0)

#Train - Test Split
install.packages("caTools")
library(caTools)

set.seed(123)

sample = sample.split(mm$Decision, SplitRatio = .75)
train = subset(mm, sample == TRUE)
test  = subset(mm, sample == FALSE)

#Logistic Regression

model <- glm(Decision ~ Yrsadd+Oldemi+FOIR+LTV, data=train, family=binomial(link = 'logit'))
summary(model)
