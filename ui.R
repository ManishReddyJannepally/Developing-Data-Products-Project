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
  titlePanel("BMI Calculator"),
  
  # Sidebar with a slider input for number of bins 
  sidebarLayout(
          sidebarPanel(
                  p("Please give your height and weight to know your BMI"),
                  sliderInput(inputId = "Height",
                              label = strong("Height in Centimeters:"),
                              min = 100,
                              max = 250,
                              value = 180),
                  sliderInput(inputId = "Weight",
                              label = strong("Weight in Kilograms:"),
                              min = 25,
                              max = 150,
                              value = 76
                              )
                  
                  ),
    
    # Show a plot of the generated distribution
    mainPanel(
            tabsetPanel(
                    tabPanel(p("Calculate my BMI"),
                             h4("Please input your height and weight using slider to know your BMI"),
                             uiOutput("input_data"),
                             uiOutput("user_BMI")
                    ),
                    tabPanel(p("App Info"),
                             h4("This App is designed to calculate Body Mass Index(BMI)"),
                             p("The body mass index (BMI) or Quetelet index is a value derived from the mass
                                (weight) and height of an individual. The BMI is defined as the body mass divided 
                                by the square of the body height, and is universally expressed in units of kg/m2, 
                                resulting from mass in kilograms and height in metres."),
                             p("The BMI is an attempt to quantify the amount of tissue mass (muscle, fat, and bone) 
                                in an individual, and then categorize that person as underweight, normal weight, overweight,
                                or obese based on that value."),
                             h5("Information Source: Wikipedia")
                             )
            )
            
            
    )
  )
))
