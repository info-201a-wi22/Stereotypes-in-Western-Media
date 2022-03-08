library(ggplot2)
library(dplyr)

data <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/avoids_stereotypes.csv")
data2 <- data %>% filter(startsWith(ï..demographic, "Age"))
data3 <- data.frame(data2$ï..demographic, gsub( "%.*", "", data2$very_important), data2$very_important)

pie <- ggplot(data3, aes(x = "", y = gsub............data2.very_important., fill = data2.ï..demographic)) +
  labs(title = "Age vs. Importance of Stereotypes in Media") +
  geom_col() +
  geom_text(aes(label = data2.very_important),
            position = position_stack(vjust = 0.5)) +
  coord_polar(theta = "y")+
  theme(axis.text = element_blank(),
        axis.ticks = element_blank(),
        axis.title = element_blank())+
  guides(fill = guide_legend(title = "Age Groups"))
