
library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
   
  output$distPlot <- renderPlot({
    
    # generate bins based on input$bins from ui.R
    y    <- input$apprehension.user + 
            input$avg_day.user * input$per_day.user +
            input$legal.user * input$hearing.user + input$transport.user
    
        plot(input$avg_day.user, y, 
             ylim = c(0,50000), 
             xlim = c(0,365),
             # LABELS
             ylab = "Anticipated cost to deport a single immigrant",
             xlab = "Anticipated detention time",
             main = "Welcome, to TrumpLand",
             # COLORS n stuff
             pch = 19, # 19 the best baby
             col = rgb(1,0,0,0.8)
             # cex = 9
             
             )

    
  })
  
})
