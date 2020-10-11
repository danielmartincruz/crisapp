#' main_page UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @import shiny 
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
               tags$h1("Contratadme subnormales"),
               footer = "My Name is Cristina Jiménez, I cursed a degree in fine arts at the University of Barcelona. Afterwards I carried out a grade on professional digital illustration at Iboix Escola, where on the one hand, I improved my Illustration skills and on the other hand I developed a set of useful skills such as character design, 2D animation and 3d Modeling."
             )
             
      )),
    fluidRow(
      column(6, 
             imageOutput(ns("img"))
# tags$image(src="Rlogo.jpg")             
             
             
      ))
  )
}

#' main_page Server Function
#'
#' @noRd 
mod_main_page_server <- function(input, output, session){
  ns <- session$ns
  
  output$img <- renderImage({
    my_gif <- 
      list(src = "/Users/danielmartincruz/Documents/cris.pmct/inst/app/www/Rlogo.jpg", contentType = "image/jpeg")
    browser()
    return(my_gif)
  }, deleteFile = FALSE)
}

## To be copied in the UI
# mod_main_page_ui("main_page_ui_1")

## To be copied in the server
# callModule(mod_main_page_server, "main_page_ui_1")

