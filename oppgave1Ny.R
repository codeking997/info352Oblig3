# Title     : TODO
# Objective : TODO
# Created by: ASUS g751jt
# Created on: 17.10.2019


##setwd("C:/Users/ASUS g751jt/PycharmProjects/info352Oblig3")
##getwd()

#install.packages("tidyverse")

# Title     : TODO
# Objective : TODO
# Created by: ASUS g751jt
# Created on: 15.10.2019

library(tidyverse)

file <- read.csv(file="appendix.csv", header=TRUE, sep=",")

participants =file$Participants_.Course_Content_Accessed.
year = file$Year



year1 = filter(file, Year==1)
year1 <- year1[ ,c("Year", "Participants_.Course_Content_Accessed.")]
sumYear1 = colSums(year1)
print(sumYear1)

year2 = filter(file, Year==2)
year2 <- year2[ ,c("Year", "Participants_.Course_Content_Accessed.")]
sumYear2 = colSums(year2)
print(sumYear2)

year3 = filter(file, Year==3)
year3 <- year3[ ,c("Year", "Participants_.Course_Content_Accessed.")]
sumYear3 = colSums(year3)
print(sumYear3)

year4 = filter(file, Year==4)
year4 <- year4[ ,c("Year", "Participants_.Course_Content_Accessed.")]
sumYear4 = colSums(year4)
print(sumYear4)


allYears3 = cbind(sumYear1, sumYear2, sumYear3, sumYear4, all=TRUE)

print(allYears3)

allYears3 <- as.data.frame(t(allYears3))

##yearAllYear = allYears3["Year"]

##yearAllYear <- as.list(yearAllYear)

##participantsAllYear = allYears3["Participants_.Course_Content_Accessed."]

##participantsAllYear <- as.list(participantsAllYear)

plot(allYears3$Year ,allYears3$Participants_.Course_Content_Accessed.,col="red", xlab="number of courses", ylab="participants",main="dots from left to right representing yearly development of mooc's")

#plot(allYears3$Year, allYears3$Participants_.Course_Content_Accessed.)

##year2 = select(year1, -Year, -Participants_.Course_Content_Accessed.)

##participantsYear1 = colSums(year1)

##print(participantsYear1)

##plot(year1$Year, year1$Participants_.Course_Content_Accessed.)

##colSums(arguments)

