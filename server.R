#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#
library(shiny)


# Define server logic required to draw scatterplot
function(input, output, session) {

  output$distPlot <- renderPlot({
    
    gdp_per |> 
      filter(Year == input$Year) %>% 
      ggplot(aes(x = `Country or Area`, y=Value)) + 
      theme(axis.title = element_text(size = 18)) +
      theme(axis.text.x = element_text( angle = 90, vjust = 0.5, hjust=1)) +
      geom_point() +
      labs(x = 'Countries',
           title = 'GDP Scatterplot, Per Year!')
    

    })

}
