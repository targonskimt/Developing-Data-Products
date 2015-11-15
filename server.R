library(shiny)

## function to calculate the MPG based on wt, qsec and am variables. 
mpgPrediction <- function(wt, qsec, am) 
  (
    ##model obtained in Regression Model Course
    (9.618 + wt*(-3.917) + qsec*(1.226) + as.numeric(am) *2.936)
  )


shinyServer
(
  function(input, output){
    output$prediction <- renderPrint({mpgPrediction(input$wt, input$qsec, input$am)})
  }
)
