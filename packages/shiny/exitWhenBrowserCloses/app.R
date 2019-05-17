#
#  Found at
#    https://github.com/daattali/advanced-shiny/blob/master/auto-kill-app/app.R
#
library(shiny)

ui <- fluidPage()

server <- function(input, output, session) {
  session$onSessionEnded(stopApp)
}

shinyApp(ui, server)
