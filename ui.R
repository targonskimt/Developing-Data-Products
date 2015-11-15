library(shiny)

shinyUI
(
  pageWithSidebar
  (
    ##header 
    headerPanel("Predicting MPG"),
    
    ##side bar panel
    sidebarPanel
    (
      ##instructions
      helpText("Select input to obtain MPG. Regression Model is based on mtcars data."),
      
      ##input of weight (wt)
      sliderInput("wt",
                  "Weight of the car (lb/1000):",
                  min = 1,
                  max = 5,
                  value = 2
      ),
      
      ##input of 1/4 mile time (qsec)
      sliderInput("qsec",
                  "1/4 Mile Time:",
                  min = 0,
                  max = 30,
                  value = 15
      ),
      
      ##input of transmission type (am)
      selectInput("am", "Transmission type:",
                  c("Automatic" = 0 ,
                    "Manual" = 1 ))
    ),
    
    ##main panel
    mainPanel
    (
      ## displaying the result
      h4('Based on input, MPG is expected to be: '),
      verbatimTextOutput("prediction")
    )

  )  
)