library(tidyverse)
library(shiny)
library(plotly)

race_of_characters <- read.csv("https://raw.githubusercontent.com/info-201a-wi22/Stereotypes-in-Western-Media/main/data/race_of_characters.csv")
roc_data <- race_of_characters[32:35,]
demographic <- roc_data$demographic
value <- roc_data$very_important

importance <- roc_data[, c("demographic", "very_important", "somewhat_important")]

server <- function(input, output) {
  output$bar <- renderPlotly({
    colnames(importance) <- c("demographic", "very_important" , "somewhat_important")
    chart <- ggplot(data = importance) +
      geom_col(mapping = aes(x = demographic, y = .data[[input$type]]),
               color = input$color_choice) +
      labs(x = "Demographic", y = input$type)
    
    return(chart)
  })
  
}
