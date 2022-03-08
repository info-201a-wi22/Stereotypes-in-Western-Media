

library("tidyverse")
library("dplyr")

stereotypes_wm <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/avoids_stereotypes.csv", header = T)


names(stereotypes_wm)[2] <- 'Very important'
names(stereotypes_wm)[3] <- 'Somewhat important'
names(stereotypes_wm)[4] <- 'Not that important'
names(stereotypes_wm)[5] <- 'Not important at all'
names(stereotypes_wm)[6] <- "Don't know/no opinion"
names(stereotypes_wm)[7] <- 'Total number'
stereotypes_wm <- stereotypes_wm[-1,]

View(stereotypes_wm)


accurate_representation <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/accurate_representations.csv", header = T)


names(accurate_representation)[2] <- 'Very important'
names(accurate_representation)[3] <- 'Somewhat important'
names(accurate_representation)[4] <- 'Not that important'
names(accurate_representation)[5] <- 'Not important at all'
names(accurate_representation)[6] <- "Don't know/no opinion"
names(accurate_representation)[7] <- 'Total number'
accurate_representation <- accurate_representation[-1,]

View(accurate_representation)


race_of_characters <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/race_of_characters.csv", header = T)


names(race_of_characters)[2] <- 'Very important'
names(race_of_characters)[3] <- 'Somewhat important'
names(race_of_characters)[4] <- 'Not that important'
names(race_of_characters)[5] <- 'Not important at all'
names(race_of_characters)[6] <- "Don't know/no opinion"
names(race_of_characters)[7] <- 'Total number'
race_of_characters <- race_of_characters[-1,]

View(race_of_characters)


avoids_stereotypes <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/avoids_stereotypes.csv", header = T)
names(avoids_stereotypes)[2] <- 'Very important'
names(avoids_stereotypes)[3] <- 'Somewhat important'
names(avoids_stereotypes)[4] <- 'Not that important'
names(avoids_stereotypes)[5] <- 'Not important at all'
names(avoids_stereotypes)[6] <- "Don't know/no opinion"
names(avoids_stereotypes)[7] <- 'Total number'
avoids_stereotypes <- avoids_stereotypes[-1,]

view(avoids_stereotypes)

authentic_experience <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/authentic_experience.csv", header = T)
names(authentic_experience)[2] <- 'Very important'
names(authentic_experience)[3] <- 'Somewhat important'
names(authentic_experience)[4] <- 'Not that important'
names(authentic_experience)[5] <- 'Not important at all'
names(authentic_experience)[6] <- "Don't know/no opinion"
names(authentic_experience)[7] <- 'Total number'
authentic_experience <- authentic_experience[-1,]

view(authentic_experience)


#--------------------------------------------------------------------------------------------------



race_of_characters <- race_of_characters %>% 
  rename(very_important = "Very important")





#call the data set dplyr

data_table_new <- race_of_characters %>% 
  select(ï..demographic, very_important) %>% 
  group_by(very_important) %>% 
  arrange(ï..demographic) %>% 
  filter(ï..demographic == "Age: 18-29" || ï..demographic == "Age: 30-44" || ï..demographic == "Age: 45-54" || ï..demographic == "Age: 55-64" || ï..demographic == "Age: 65+"|| ï..demographic == "Ethnicity: White"|| ï..demographic == "Ethnicity: Hispanic" || ï..demographic == "Ethnicity: Afr. Am." || ï..demographic == "Ethnicity: Other")  




