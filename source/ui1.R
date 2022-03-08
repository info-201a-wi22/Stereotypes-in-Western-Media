source("server1.R")

firstPage <-   tabPanel(
  "First Plot", 
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "type_input",
        label = "Variable",
        choices = c("Age", "Income", "Ethnicity", "Ideo")
      )
    ),
    mainPanel(
      plotlyOutput(outputId = "pie_chart")
    ))
)

secondPage <- tabPanel(
  "Second Plot", 
  sidebarLayout(
    sidebarPanel(
      selectInput(
        inputId = "color_input",
        label = "Color",
        choices = c("Black", "Blue", "Red", "Green", "Orange")
      )
    ),
    mainPanel(
      plotlyOutput(outputId = "scatter")
    ))
)

ui1 <- navbarPage(
  theme = shinytheme("united"),
  "Stereotypes in Media",
  firstPage,
  secondPage
)