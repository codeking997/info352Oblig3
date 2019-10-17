
setwd("C:/Users/ASUS g751jt/PycharmProjects/info352Oblig3")
getwd()

#install.packages("tidyverse")

# Title     : TODO
# Objective : TODO
# Created by: ASUS g751jt
# Created on: 15.10.2019

file <- read.csv(file="appendix.csv", header=TRUE, sep=",")

Course = file$Course_Title

year = file$Year

participants2 = file$Participants_.Course_Content_Accessed.

##year1 = filter(participants2,year==1)

##participantsYear1 = filter(year==1, participants2)

##colSums(arguments)

participants3 = file$Launch_Date

participants = file$Certified

institution = file$Institution

mit = file$Course_Title[c(institution=="MITx")]

harvard = file$Course_Title[c(institution=="HarvardX")]



##plot(x=harvard, y=mit, col="red", main="growth of moocs")

##print(harvard)



##plot(year, participants2, col="red",main="growth of mooc's")


##year 0-4 y aksen
##x aksen number of participants
## plottetet linjen harvard og mit år og number of participants


