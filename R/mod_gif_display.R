#' gif_display UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_gif_display_ui <- function(id){
  ns <- NS(id)
  tagList(
    imageOutput(ns("current_image_plot"))
    
  )
}
    
#' gif_display Server Function
#'
#' @noRd 
mod_gif_display_server <- function(input, output, session){
  ns <- session$ns
  loaded_image <- reactive({
    get_gif("/Users/danielmartincruz/Documents/cris.pmct/inst/app/www/img/2d")
  })
  
  output$current_image_plot <- renderImage({
    earth <- loaded_image()
    # earth <- image_read("https://jeroen.github.io/images/earth.gif") %>%
    #   image_scale("200x") %>%
    #   image_quantize(128)
    anim_save("outfile.gif", earth) # New
    
    list(src = "outfile.gif",
         contentType = 'image/gif'
         # width = 400,
         # height = 300,
         # alt = "This is alternate text"
    )
  })
}
    
## To be copied in the UI
# mod_gif_display_ui("gif_display_ui_1")
    
## To be copied in the server
# callModule(mod_gif_display_server, "gif_display_ui_1")
 
