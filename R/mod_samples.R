#' samples UI Function
#'
#' @description A shiny Module.
#'
#' @param id,input,output,session Internal parameters for {shiny}.
#'
#' @noRd 
#'
#' @importFrom shiny NS tagList 
mod_samples_ui <- function(id){
  ns <- NS(id)
  tagList(
 "ajo"
  )
}
    
#' samples Server Function
#'
#' @noRd 
mod_samples_server <- function(input, output, session){
  ns <- session$ns
 
}
 