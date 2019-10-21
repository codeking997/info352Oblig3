# Title     : TODO
# Objective : TODO
# Created by: Tor Aasheim
# Created on: 21.10.2019
library(tidyverse)

file <- read.csv(file="appendix.csv", header=TRUE, sep=",")

Harvard = filter(file, Institution == "HarvardX")
MIT = filter(file, Institution == "MITx")

HarvardCert = Harvard$X._Certified
MitCert = MIT$X._Certified

png(file="cert_linechart.png")

plot(HarvardCert,type = "o",col = "red", xlab = "course", ylab = "Certified by percent",
   main = "course")

lines(MitCert, type = "o", col = "blue")
dev.off()
