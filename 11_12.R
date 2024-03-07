install.packages("devtools")
library(devtools)
devtools::install_github("janish-parikh/ZTest")
library(HypothesisTesting)

#data overview
mxmh <- read.csv("/Users/ananyachandrasekhar/Downloads/mxmh_survey_results.csv")
head(mxmh)

#filtering
table(mxmh$Age)
mxmh_college <- subset(mxmh, Age > '17' & Age < '25')

tapply(mxmh_college$Anxiety, mxmh_college$Fav.genre, mean)
tapply(mxmh_college$Depression, mxmh_college$Fav.genre, mean)
tapply(mxmh_college$Insomnia, mxmh_college$Fav.genre, mean)

#barplot of all genres
t<-table(mxmh_college$Fav.genre)
barplot(t,xlab="Fav.genre",ylab="Number of Students", 
        main="Barplot for favorite genre distribution")
#boxplots
boxplot(Anxiety~Age,data=mxmh_college,xlab="Age",ylab="Anxiety", main="Boxplot of Anxiety Levels vs Age",border="black")
boxplot(Anxiety~Fav.genre,data=mxmh_college,xlab="Fav.genre",ylab="Anxiety", main="Boxplot of Anxiety Levels vs Genre",border="black")

boxplot(Depression~Age,data=mxmh_college,xlab="Age",ylab="Depression", main="Boxplot of Depression Levels vs Age",border="black")
boxplot(Depression~Fav.genre,data=mxmh_college,xlab="Fav.genre",ylab="Depression", main="Boxplot of Depression Levels vs Genre",border="black")

boxplot(Insomnia~Age,data=mxmh_college,xlab="Age",ylab="Insomnia", main="Boxplot of Insomnia Levels vs Age",border="black")
boxplot(Insomnia~Fav.genre,data=mxmh_college,xlab="Fav.genre",ylab="Insomnia", main="Boxplot of Insomnia Levels vs Genre",border="black")

#Alternate hypothesis: College students who listen to rock music are more anxious than those who listen to metal music
#p-value is 0
p <- permutation_test(mxmh_college, 'Fav.genre', 'Anxiety',10000, 'Metal', 'Rock')
cat("The p-value of the hypothesis is equal to:",p)

#Alternate hypothesis: College students who listen to rock music are more depressed than those who listen to metal music
#p-value of 0.002
p <- permutation_test(mxmh_college, 'Fav.genre', 'Depression',10000, 'Metal', 'Rock')
cat("The p-value of the hypothesis is equal to:",p)

#Alternate hypothesis: College students who listen to metal music are more insomniac than those who listen to rock music
#p-value of 0.2648
p <- permutation_test(mxmh_college, 'Fav.genre', 'Insomnia',10000, 'Rock', 'Metal')
cat("The p-value of the hypothesis is equal to:",p)

p <- permutation_test(mxmh_college, 'Fav.genre', 'Insomnia',10000, 'Metal', 'Lofi')
cat("The p-value of the hypothesis is equal to:",p)


#Bayesian test
Prior<-nrow(mxmh[mxmh$Fav.genre =='Lofi',])/nrow(mxmh)
PriorOdds<-round(Prior/(1-Prior),2)
cat("The prior odds are equal to:",PriorOdds)
TruePositive<-round(nrow(mxmh[mxmh$Insomnia > '7' & mxmh$Fav.genre =='Lofi',])/nrow(
  mxmh[mxmh$Fav.genre =='Lofi',]),2)
cat("The True Positive is equal to:",TruePositive)
FalsePositive<-round(nrow(mxmh[mxmh$Insomnia > '7'& mxmh$Fav.genre !='Lofi',])/nrow(mxmh[mxmh$Fav.genre !='Lofi',]),2)
cat("The False Positive is equal to:",FalsePositive)
LikelihoodRatio<-round(TruePositive/FalsePositive,2)
cat("The Likelihood Ratio is equal to:",LikelihoodRatio)
PosteriorOdds <-LikelihoodRatio * PriorOdds
cat("The Posterior Odds are equal to:",PosteriorOdds)
Posterior <-PosteriorOdds/(1+PosteriorOdds)


