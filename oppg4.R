# Title     : TODO
# Objective : TODO
# Created by: Tor Aasheim
# Created on: 18.10.2019

file <- read.csv(file="appendix.csv", header=TRUE, sep=",")

certified = file$Certified
medianAge = file$Median_Age

#print(median(medianAge, na.rm = FALSE))

# Give the chart file a name.
#png(file = "histogram.png")

# Create the histogram.
#hist(medianAge,xlab = "Weight",col = "yellow",border = "blue")


#png(file = "line_chart.png")

#plot(medianAge,type = "o")