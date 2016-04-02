#Bubble charts


setwd("~/Data_Projects/visualizations")
#Read in data
bub <- read.csv("data/BubbleData.csv")
#simple Plot
plot(bub$Precision,bub$Recall,xlab="Precision", ylab="Recall" )
text(bub$Precision, bub$Recall+.03, bub$ID, cex=0.5)
#we want to scale the bubbles by area, not radius
radius = sqrt( bub$Number.of.Records/ pi )


#Bubble Chart Plot 
symbols(bub$Precision,bub$Recall,circles=radius,
        inches=0.15, fg="white", bg=(bub$Category+1), xlab="Precision", ylab="Recall")
text(bub$Precision, bub$Recall, bub$ID, cex=0.5)

