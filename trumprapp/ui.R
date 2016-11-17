#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("TrumpR"),
  # apprehension bed_day per_day avg_day legal hearing transport
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
          
    sidebarPanel(
            
        numericInput("apprehension.user",
                   "Cost to apprehend",
                   min = 500,
                   max = 20000,
                   value = 18310),
       sliderInput("avg_day.user",
                   "Days in detention",
                   min = 1,
                   max = 100,
                   value = 30),
       numericInput("per_day.user",
                   "Cost per day of detention (staffing + housing)",
                   min = 35,
                   max = 1000,
                   value = 111.81),
       numericInput("legal.user",
                    "Anticipated legal costs",
                    min = 1,
                    max = 100,
                    value = 817),
       sliderInput("hearing.user",
                    "Number of expected hearings before deportation",
                    min = 1,
                    max = 5,
                    value = 1),
       numericInput("transport.user",
                    "Cost of transport back to 'home country'",
                    min = 200,
                    max = 5000,
                    value = 1000),
       h6("join the cause", a("contribute to the repo", href="https://github.com/mattkcole/trumpR"))
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
            h2("How much will deporting an illegal immigrant cost?"),
       plotOutput("distPlot"),
       h6("How much?")
    )
  )
))

