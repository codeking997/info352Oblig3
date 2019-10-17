# Title     : TODO
# Objective : TODO
# Created by: ASUS g751jt
# Created on: 17.10.2019

##What is the difference between MITx and Harvardx regarding the number of participants per year?

library(tidyverse)

file <- read.csv(file="appendix - appendix.csv", header=TRUE, sep=",")

year1H = filter(file, Year==1, Institution=="HarvardX")
year1H <- year1H[ ,c("Year", "Participants_.Course_Content_Accessed.")]
sumYear1H = colSums(year1H)
print(sumYear1H)

year2H = filter(file, Year==2, Institution=="HarvardX")
year2H <- year2H[ ,c("Year", "Participants_.Course_Content_Accessed.")]
sumYear2H = colSums(year2H)
print(sumYear2H)

year3H = filter(file, Year==3, Institution=="HarvardX")
year3H <- year3H[ ,c("Year", "Participants_.Course_Content_Accessed.")]
sumYear3H = colSums(year3H)
print(sumYear3H)

year4H = filter(file, Year==4, Institution=="HarvardX")
year4H <- year4H[ ,c("Year", "Participants_.Course_Content_Accessed.")]
sumYear4H = colSums(year4H)
print(sumYear4H)

allYears3 = cbind(sumYear1H, sumYear2H, sumYear3H, sumYear4H, all=TRUE)

allYears3 <- as.data.frame(t(allYears3))



year1Mit = filter(file, Year==1, Institution=="MITx" )
year1Mit <- year1Mit[ ,c("Year", "Participants_.Course_Content_Accessed.")]
sumYear1 = colSums(year1Mit)
print(sumYear1)

year2Mit = filter(file, Year==2, Institution=="MITx" )
year2Mit <- year2Mit[ ,c("Year", "Participants_.Course_Content_Accessed.")]
sumYear2 = colSums(year2Mit)
print(sumYear2)

year3Mit = filter(file, Year==3, Institution=="MITx" )
year3Mit <- year3Mit[ ,c("Year", "Participants_.Course_Content_Accessed.")]
sumYear3 = colSums(year3Mit)
print(sumYear3)

year4Mit = filter(file, Year==4, Institution=="MITx" )
year4Mit <- year4Mit[ ,c("Year", "Participants_.Course_Content_Accessed.")]
sumYear4 = colSums(year4Mit)
print(sumYear4)

allYearsMit = cbind(sumYear1, sumYear2, sumYear3, sumYear4, all=TRUE)

allYearsMit <- as.data.frame(t(allYearsMit))

plot(allYears3$Year ,allYears3$Participants_.Course_Content_Accessed.,col="red", xlab="number of courses", ylab="participants",main="dots from left to right representing yearly development of mooc's")
points(allYearsMit$Year ,allYearsMit$Participants_.Course_Content_Accessed.,col="green")

##plot(allYears3$Year ,allYears3$Participants_.Course_Content_Accessed.,col="red", xlab="number of courses", ylab="participants",main="dots from left to right representing yearly development of mooc's")