library(tidyverse)
library(stringr)

accurate_representations <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/accurate_representations.csv")

data1 <- accurate_representations %>% filter(startsWith(demographic, "Age"))
data2 <- data.frame(data1$demographic, data1$not_important_at_all)

data2 <- rename(data2, age_range = data1.demographic)
data2 <- rename(data2, percentage_value = data1.not_important_at_all)
view(data2)

ggplot(data = data2,
       mapping = aes(x = age_range,
                     y = percentage_value, group=1)) + 
    labs(title = "Representation of Identity (Not at all Important) based on Age") +
    geom_point(size = 3) +
    geom_line(colour = "red")
      
    