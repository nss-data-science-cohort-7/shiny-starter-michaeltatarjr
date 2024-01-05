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
    titlePanel("GDP Per Capita"),

    # Sidebar with a slider input
    sidebarLayout(
        sidebarPanel( width = 8,
        mainPanel( width = 12),
   #long slider that connects to df and yields the 
      fluidRow(
        shiny::column(10, offset = 1,
                  sliderInput("Year", "Year",
                            min = min(gdp_per$Year), max = max(gdp_per$Year),
                                  value = min(gdp_per$Year), animate = TRUE)
        )),
),
        # Show a plot of the generated distribution
        mainPanel(
          fluidRow(
            column(width = 12, height = 200,
               plotOutput("distPlot")
        )
    )
)
)
)