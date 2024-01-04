#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

# Define UI for application that draws a histogram
fluidPage(

    # Application title
    titlePanel("GDP Per Capita"),

    # Sidebar with a slider input
    sidebarLayout(
        sidebarPanel(
   #long slider that connects to df and yields the 
      fluidRow(
        shiny::column(8, offset = 0,
                  sliderInput("Year", "Year",
                            min = min(gdp_per$Year), max = max(gdp_per$Year),
                                  value = min(gdp_per$Year), animate = TRUE),
        )),
),
        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
)
