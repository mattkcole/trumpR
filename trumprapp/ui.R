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
                   "Cost per day of detention (staffing)",
                   min = 1,
                   max = 100,
                   value = 30),
       numericInput("bed_day.user",
                    "Cost per day of detention (housing)",
                    min = 1,
                    max = 100,
                    value = 30),
       numericInput("per_day.user",
                    "Cost per day of detention (staffing)",
                    min = 1,
                    max = 100,
                    value = 30),
       numericInput("legal.user",
                    "Cost per day of detention (staffing)",
                    min = 1,
                    max = 100,
                    value = 30),
       numericInput("hearing.user",
                    "Cost per day of detention (staffing)",
                    min = 1,
                    max = 100,
                    value = 30),
       numericInput("transport.user",
                    "Cost per day of detention (staffing)",
                    min = 1,
                    max = 100,
                    value = 30)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("distPlot")
    )
  )
))
