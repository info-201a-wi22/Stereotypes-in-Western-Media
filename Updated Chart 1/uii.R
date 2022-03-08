source("serverrr.R")
library(shinythemes)

tab <- tabPanel("Chart 1 Visualization",
                h4("Graph"),
                sidebarLayout(
                  sidebarPanel(
                    selectInput(
                      inputId = "type",
                      label = "Importance Level",
                      choices = c("Very Important" = "very_important", "Somewhat Important" = "somewhat_important")
                    ),
                    selectInput(
                      inputId = "color_choice",
                      label = "Color Options",
                      choices = c("Blue", "Red", "Yellow", "Green", "Purple")
                    )
                  ),
                  mainPanel(
                    plotlyOutput(outputId = "bar"),
                  ))
)
ui <- navbarPage(
  theme = shinytheme("darkly"),
  "Chart 1",
  tab,
)
