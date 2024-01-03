#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

library(shiny)



# Define server logic required to draw a histogram
function(input, output, session) {

  output$distPlot <- renderPlot({
    
    gdp_per |> 
      ggplot(aes(x = `Country or Area`, y=Value)) + 
      geom_point() +
      labs(x = 'Waiting time to next eruption (in mins)',
           title = 'Histogram of waitg times')
    

    })

}
