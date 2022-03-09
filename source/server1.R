library(dplyr)
library(tidyverse)
library(plotly)
library(stringr)

library(ggplot2)
library(dplyr)

data <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/avoids_stereotypes.csv")

accurate_representations <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/accurate_representations.csv")
data_1 <- accurate_representations %>% filter(startsWith(demographic, "Age"))
data_2 <- data.frame(data_1$demographic, data_1$not_important_at_all)
data_2 <- rename(data_2, age_range = data_1.demographic)
data_2 <- rename(data_2, percentage_value = data_1.not_important_at_all)

race_of_characters <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/race_of_characters.csv")

roc_data <- race_of_characters[32:35,]
demographic <- roc_data$demographic
value <- roc_data$very_important
importance <- roc_data[, c("demographic", "very_important", "somewhat_important")]

server1 <- function(input, output) {
  output$pie_chart <- renderPlotly({
  data2 <- data %>% filter(startsWith(demographic, input$type_input))
  data3 <- data.frame(data2$demographic, gsub( "%.*", "", data2$very_important), data2$very_important)
  plot_ly(data = data3, labels = data3$data2.demographic, values = data3$gsub............data2.very_important., type = 'pie') %>% layout(title=paste("Importance of Stereotypes in Media:", input$type_input))
  })

  output$scatter <- renderPlotly({
    ggplot(data = data_2, mapping = aes(x = age_range, y = percentage_value, group=1)) + 
      labs(title = "Age vs. Representation of Identity (Not at all Important)",x = "Age Range", y = "Percentage Value") +
      geom_point(size = 3, color = input$color_input) +
      geom_line(color = input$color_input)
  })
  
  output$bar <- renderPlotly({
    colnames(importance) <- c("demographic", "very_important" , "somewhat_important")
    chart <- ggplot(data = importance) +
      geom_col(mapping = aes(x = demographic, y = .data[[input$type]]),
               fill = input$color_choice) +
      labs(title = "Characters Played by Actors of the Same Race", x = "Demographic", y = "Percent Who Say \"Very Important\"")
    
    return(chart)
  })
}
