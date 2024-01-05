#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    https://shiny.posit.co/
#

# Define UI for application 
fluidPage(theme= shinytheme("sandstone"),
 # shinythemes::themeSelector(),
    # Application title
    titlePanel(
      h1("   GDP Per Capita, w/ automated year count" )
    ),
    # Sidebar with a slider input
    sidebarLayout(
        sidebarPanel( width = 8, align = 'center',
        
   #long slider that connects to df, animated
      fluidRow(
        shiny::column(11, offset = 1,
                  sliderInput("Year", "Year",
                            min = min(gdp_per$Year), max = max(gdp_per$Year),
                                  value = min(gdp_per$Year), animate = TRUE)
        )),
),
        # Show a plot of the generated distribution, moving over time
        mainPanel(
          fluidRow(
            column(width = 12, align = 'center',
               plotOutput("distPlot")
        )
    )
)
)
)