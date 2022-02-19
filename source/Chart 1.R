library("tidyverse")
library("ggplot2")
library("dplyr")

rm(list = ls())

race_of_characters <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/race_of_characters.csv")
View(race_of_characters)

roc_data <- race_of_characters[32:35,]
View(roc_data)

demographic <- roc_data$�..demographic
value <- roc_data$very_important

most_importantance <- roc_data[, c("�..demographic", "very_important")]
#View(total_importantance)


ggplot(data = most_importantance) +
  geom_col(mapping = aes(x = demographic, y = value, fill = imporantance, position= "fill",))
