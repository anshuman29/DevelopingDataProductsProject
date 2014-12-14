ageCalculation<-function(animal,age){
  if(animal=='dog')
    age*6
  else if(animal=='cow')
    age*7
  else if (animal=='horse')
    age*3
} 

library(shiny)
shinyServer(
  function(input,output){    
    output$inputText<-renderText({ paste("A",input$age, "year old",input$animal) })
    output$outputText<-renderText({ paste("is like a",ageCalculation(input$animal,input$age),"year old human")})
  })