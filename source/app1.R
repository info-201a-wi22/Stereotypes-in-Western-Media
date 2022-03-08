library(shiny)
library(shinythemes)
source("server1.R")
source("ui1.R")

shinyApp(ui = ui1, server = server1)
