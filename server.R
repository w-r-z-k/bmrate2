library(shiny)
#library(ggplot2)

shinyServer(function(input, output) {
 
#   Women:
#     655 + (4.3 x weight in pounds) + (4.7 x height in inches) - (4.7 x age in years)
#   
#   Men:
#     66 + (6.3 x weight in pounds) + (12.9 x height in inches) - (6.8 x age in years)
  
  bmr <- reactive({
  if (input$sex=="female") {
    655 + (4.3*input$weight*0.453592) + (4.7*input$height*2.54) - (4.7*input$age)
  } else if (input$sex=="male") {
    66 + (6.3*input$weight*0.453592) + (12.9*input$height*2.54) - (6.8*input$age) 
  } 
  })
  
  act <- reactive({
    if (input$activity.level=="Sedentary") {
      .2
    } else if (input$activity.level=="Lightly Active") {
      .3
    } else if (input$activity.level=="Moderately Active") {
      .4
    } else if (input$activity.level=="Very Active") {
      .5
    } else if (input$activity.level=="Extra Active") {
      .6
    } else {
      1
    }})
  
  
  output$text1 <- renderText({ 
    "The BMR is "
  })
  
  output$text2 <- renderText({ 
    as.character(bmr()*act())
  })
  
  
#   dataset <- reactive(function() {
#     diamonds[sample(nrow(diamonds), input$sampleSize),]
#   })
#   
#   output$plot <- reactivePlot(function() {
#     
#     p <- ggplot(dataset(), aes_string(x=input$x, y=input$y)) + geom_point()
#     
#     if (input$color != 'None')
#       p <- p + aes_string(color=input$color)
#     
#     facets <- paste(input$facet_row, '~', input$facet_col)
#     if (facets != '. ~ .')
#       p <- p + facet_grid(facets)
#     
#     if (input$jitter)
#       p <- p + geom_jitter()
#     if (input$smooth)
#       p <- p + geom_smooth()
#     
#     print(p)
#     
#   }, height=700)
  
})
