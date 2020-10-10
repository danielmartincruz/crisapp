#' The application User-Interface
#' 
#' @param request Internal parameter for `{shiny}`. 
#'     DO NOT REMOVE.
#' @import shiny
#' @import shinydashboardPlus
#' @import shinydashboard
#' @noRd
app_ui <- function(time_preprocessing, commission) {
  
  tagList(
    # Leave this function for adding external resources
    golem_add_external_resources(),
    # Define this page as a dashboard page to signal we're using the     dashboard page format
    shinydashboardPlus::dashboardPagePlus(
      
      header = dashboardHeader(title = "Artist book", 
                        titleWidth = 600,
                        tags$li(class="dropdown",tags$a(href="https://www.instagram.com/cristinajimenez_artist/", icon("instagram"), "Instagram", target="_blank")),
                        tags$li(class="dropdown",tags$a(href="https://www.linkedin.com/in/abhinav-agrawal-pmp%C2%AE-itil%C2%AE-5720309/" ,icon("linkedin"), "My Profile", target="_blank")),
                        tags$li(class="dropdown",tags$a(href="https://github.com/aagarw30/R-Shinyapp-Tutorial", icon("github"), "Source Code", target="_blank"))
                        
                        
        ),
      # Create our navigation menu that links to each of the tabs we defined
      sidebar = shinydashboard::dashboardSidebar(
        shinydashboard::sidebarMenu(
          # Setting id makes input$tabs give the tabName of currently-selected tab
          id = "tabs",
          shinydashboard::menuItem("main", tabName = "mn", icon = icon("user-circle"))
)
      ),
      # Show the appropriate tab's content in the main body of our dashboard when we select it
      body = shinydashboard::dashboardBody(
        shinydashboard::tabItems(
          shinydashboard::tabItem("mn", mod_main_page_ui("main_page_ui_1"))
        ) 
      ),
      title = "Artist book"
    )
  )
}

#' Add external Resources to the Application
#' 
#' This function is internally used to add external 
#' resources inside the Shiny application. 
#' 
#' @import shiny
#' @importFrom golem add_resource_path activate_js favicon bundle_resources
#' @noRd
golem_add_external_resources <- function(){
  
  add_resource_path(
    'www', app_sys('app/www')
  )
 
  tags$head(
    favicon(),
    bundle_resources(
      path = app_sys('app/www'),
      app_title = 'cris.pmct'
    )
    # Add here other external resources
    # for example, you can add shinyalert::useShinyalert() 
  )
}

