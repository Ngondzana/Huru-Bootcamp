# Data visualization with ggplot
#scatter plots and histograms

#loading th required libraries

library(tidyverse)

#Load the  wine quality dataset 
wine_data <- read.csv("winequality-red.csv")

#viewing the dataset
View(wine_data)

#Summarise data
summary(wine_data)

#callimg the ggplot function

#Plotting of a scatter plot
ggplot(data = wine_data) +
  geom_point(mapping = aes(x=fixed.acidity, y=pH,colour=alcohol, alpha=1/2)) 

# Plotting of a histogram
ggplot(data = wine_data) +
  geom_histogram(mapping = aes(x=sulphates), bin =20, origin=0)

               
               