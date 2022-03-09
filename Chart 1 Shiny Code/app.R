library(shinythemes)
library(shiny)

source("serverr.R")
source("ui.R")

shinyApp(ui = ui, server = server)