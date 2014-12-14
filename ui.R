library(shiny)
shinyUI(
  pageWithSidebar(
    headerPanel("Age of Animals in Human Years"),
    sidebarPanel(
      radioButtons('animal','Type of Animal',c("Dog"="dog","Cow"="cow","Horse"="horse"),selected=NULL),
      numericInput('age','Age of Animal', 1, min=0, max=100, step=1),      
      submitButton('Submit')
    ),
    mainPanel(
      verbatimTextOutput("inputText"),
      verbatimTextOutput("outputText")
    )
  )
  )