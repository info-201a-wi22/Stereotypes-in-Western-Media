library("tidyverse")
library("ggplot2")
library("dplyr")

race_of_characters <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/race_of_characters.csv")
View(race_of_characters)

roc_data <- race_of_characters[32:35,]

demographic <- roc_data$demographic
value <- roc_data$very_important 
y = c(value)
value2 <- y[order(y)]

demographic2 <- c("White", "Hispanic", "African American", "Other")


chart_1 <- ggplot(data = roc_data) +
  geom_col(mapping = aes(x = demographic , y = value2, fill = demographic2)) +
  labs(title = "Percent of Each Race Who Responded Very Important", 
       x = "Demographic",
       y = "% Very Important")  

chart_1
