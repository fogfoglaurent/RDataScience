library(shiny)
ui <- fluidPage(
  #inputID: name of the field
  sliderInput(inputId="num",label="Choose a number",value=25,min=1,max=100),
  #Input()
  #Output()
  plotOutput("hist")
)

server <- function(input, output) {
output$hist=renderPlot({
  title="Test"
  hist(rnorm(input$num),main=title)
  })
}
shinyApp(ui = ui, server = server)