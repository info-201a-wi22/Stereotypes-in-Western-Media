library(tidyverse)
library(stringr)

accurate_representations <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/accurate_representations.csv")
colnames(accurate_representations)
data1 <- accurate_representations %>% filter(startsWith(ï..demographic, "Age"))
data2 <- data.frame(data1$ï..demographic, data1$not_important_at_all)

data2 <- rename(data2, age_range = data1.ï..demographic)
data2 <- rename(data2, percentage_value = data1.not_important_at_all)
view(data2)

chart_three <- ggplot(data = data2,
       mapping = aes(x = age_range,
                     y = percentage_value, group=1)) + 
    labs(title = "Representation of Identity (Not at all Important) based on Age") +
    geom_point(size = 3) +
    geom_line(colour = "red")
      
    