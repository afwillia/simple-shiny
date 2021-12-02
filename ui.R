# ui.R
# ------------------------------------
library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Test Shiny!"),
  
  # Choose a date
  fluidRow(
    column(3, 
           dateInput("date", 
                     label = h5("Pick a day"), 
                     value = Sys.Date())
     ),
    column(3, 
           textInput("time_leaving", 
                     label = h5("Enter a time (in 24-hr format)"), 
                     value = '13:00')
     )
  ),
  
  mainPanel(
    textOutput('sunset'),
    textOutput('time')
    
  )
  
))