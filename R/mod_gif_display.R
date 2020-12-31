#' gif_display UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @import magick
#' @import gganimate
#' @importFrom shiny NS tagList 
mod_gif_display_ui <- function(id, title){
  ns <- NS(id)
  tagList(
    box(

        solidHeader = FALSE, 
      a(imageOutput(ns("current_image_plot")), onclick = paste0("openTab('",title,"')"), href="#")
        
    )
    
    
  )
}
    
#' gif_display Server Function
#'
#' @noRd 
mod_gif_display_server <- function(input, output, session, path){
  ns <- session$ns
  loaded_image <- reactive({
    get_gif(path)
  })
  
  output$current_image_plot <- renderImage({

    anim_save("outfile.gif", loaded_image()) # New
    
    list(src = "outfile.gif",
         contentType = 'image/gif'
         # width = 400,
         # height = 300,
         # alt = "This is alternate text"
    )
  } ,deleteFile = FALSE)
}
    
## To be copied in the UI
# mod_gif_display_ui("gif_display_ui_1")
    
## To be copied in the server
# callModule(mod_gif_display_server, "gif_display_ui_1")
 
