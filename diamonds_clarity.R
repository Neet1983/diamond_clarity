#using ggplot to plot a smooth scatterplot for diamond carat against price

#remove objects from the workspace
rm(list = ls())

#read a csv file into the workspace
mydata <- read.csv(file.choose())

#install the ggplot 2 package
install.packages("ggplot2")

#activate the gglot 2 package
library("ggplot2")

#plot the graph
ggplot(data = mydata[mydata$carat<2.5, ], 
       aes(x=carat, y=price, color = clarity)) + 
  geom_point(alpha = 0.1) +
  geom_smooth()
