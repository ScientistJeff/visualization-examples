setwd("~/Data_Projects/visualizations")
bub <- read.csv("BubbleData.csv")


#we want to scale the bubbles by area, not radius
radius = sqrt( bub$Number.of.Records/ pi )


symbols(bub$Precision,bub$Recall,circles=radius,
        inches=0.15, fg="white", bg=(bub$Category+1), xlab="Precision", ylab="Recall")
text(bub$Precision, bub$Recall, bub$ID, cex=0.5)

