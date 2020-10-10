#' main_page UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
#' @import shinydashboard
#' @import shinydashboardPlus
#' @import shinyWidgets
#' 
mod_main_page_ui <- function(id){
  ns <- NS(id)
  tagList(
    fluidRow(
      column(12, offset = 2 ,
    widgetUserBox(
      title = "Cristina Jiménez Encinas",
      subtitle = "Concept artist",
      type = NULL,
      width = 8,
      # boxToolSize = "lg",
      src = "https://i.ibb.co/pQNxFVh/IMG-20200123-WA0015.jpg",
      background = TRUE,
      backgroundUrl = "https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?auto=compress&cs=tinysrgb&h=350",
      "Some text here!",
      footer = "The footer here!"
    ),
      socialButton(
        url = "https://www.instagram.com/cristinajimenez_artist/",
        type = "instagram"
      )

  ))
  )
}
    
#' main_page Server Function
#'
#' @noRd 
mod_main_page_server <- function(input, output, session){
  ns <- session$ns

}
    
## To be copied in the UI
# mod_main_page_ui("main_page_ui_1")
    
## To be copied in the server
# callModule(mod_main_page_server, "main_page_ui_1")
 
