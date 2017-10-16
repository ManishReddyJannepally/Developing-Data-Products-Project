#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
        output$input_data = renderText({
                paste0("<strong>","Your weight is ",input$Weight," Kgs and your height is ",
                       input$Height," Cms","</strong>")
                })
        
        output$user_BMI = renderText({
                user_bmi = round(input$Weight/(input$Height/100)^2,1)
                
                if (user_bmi < 15.0) {
                        
                        
                        paste0("Your BMI is ", user_bmi,". You are <strong> very severely underweight </strong>")
                }
                else if(user_bmi <= 16.0) {
                        paste0("Your BMI is ", user_bmi,". You are <strong> Severely underweight </strong>")
                }
                else if(user_bmi <= 18.5){
                        paste0("Your BMI is ", user_bmi,". You are <strong> Underweight </strong>")
                }
                else if(user_bmi <= 25.0){
                        paste0("Your BMI is ", user_bmi,". You are <strong> Normal </strong>")
                }
                else if(user_bmi <= 30){
                        paste0("Your BMI is ", user_bmi,". You are <strong> Overweight </strong>")
                }
                else if(user_bmi <=35){
                        paste0("Your BMI is ", user_bmi,". You are <strong> Obese Class I (Moderately obese)")
                }
                else if(user_bmi <=40){
                        paste0("Your BMI is ", user_bmi,". You are <strong> Obese Class II (Severely obese)")
                }
                else{
                        paste0("Your BMI is ", user_bmi,". You are <Strong> Obese Class III (Very severely obese)")
                }
                })
        })
