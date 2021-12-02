# server.R
# -------------------------------------------------

library(shiny)

# Define server logic required to return the sunset at a particular day
shinyServer(function(input, output) {
  

    output$time<- renderText({
      leave <- as.POSIXct(input$time_leaving, format='%H:%M')
      leave <- as.POSIXlt(leave)$hour + as.POSIXlt(leave)$min/60
      
      paste0('The chosen hour is ', leave)
      
    })
    
})
