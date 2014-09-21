library(shiny)
library(ggplot2)

dataset <- diamonds

shinyUI(pageWithSidebar(
  
  headerPanel("Basal Metabolic Rate"),

  sidebarPanel(
    
    p("Basal metabolic rate (BMR) refers to the minimum amount of energy ",
             "-- in the form of calories -- that your body requires to complete ",
             "its normal function."),
    
    p("Enter your age, sex, activity level,",
      " height, and weight.  The BMR will appear on the right."),
    
    # Weight, Height, Age, Sex
    
    sliderInput('age', 'Age in Years', min=18, max=120,
                value=18, step=1, round=0),
    
    helpText("Note: the calculation is only supported for adults."),
    
    # radioButtons(inputId, label, choices, selected = NULL, inline = FALSE)
    radioButtons("sex", "Sex: ", c("Female"="female","Male"="male"),
                 selected = "female", inline = TRUE),
    
    # Activity Level
    
    selectInput('activity.level', 'Activity Level: ',
         c('Sedentary', 'Lightly Active', 'Moderately Active',
           'Very Active','Extra Active')),
    
    # checkboxInput('imperial', 'Use Imperial Units'),
    #w.label = "Weight:"      ,
    #
    #if (imperial==TRUE) {
    #   w.label = cat(w.label,"(inches)")
    #} else {
    #   w.label = cat(w.label,"(kilograms)")
    #}
    #,
    
    numericInput("weight", "Weight: (kg)", value=80, min = 1, max = 1000, step = NA),
    numericInput("height", "Height: (cm)", value=150, min = 1, max = 1000, step = NA)

  ),
  
  mainPanel(
    #plotOutput('plot')
    textOutput("text1"),
    textOutput("text2"),
    p(" in calories per day.")
  )
))
