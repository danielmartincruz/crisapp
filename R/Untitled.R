library(shiny)
library(shinydashboard)
library(shinydashboardPlus)

shinyApp(
  ui = tags$body(class="skin-blue sidebar-mini control-sidebar-open", dashboardPagePlus(
    header = dashboardHeaderPlus(
      enable_rightsidebar = TRUE,
      rightSidebarIcon = "gears"
    ),
    sidebar = dashboardSidebar(),
    body = dashboardBody(
    ),
    rightsidebar = rightSidebar(
      background = "dark",
      rightSidebarTabContent(
        id = 1,
        title = "Tab 1",
        icon = "desktop",
        active = TRUE,
        sliderInput(
          "obs",
          "Number of observations:",
          min = 0, max = 1000, value = 500
        )
      )
    ),
    title = "Right Sidebar"
  )),
  server = function(input, output) {
  }
)