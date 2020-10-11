get_gif <- function(image_path){

  files <- list.files(image_path)
  img <- image_read(file.path(image_path,files), density = NULL, depth = NULL, strip = FALSE)
  img <- image_animate(image_scale(img, "300x300"), fps = 1, dispose = "previous")
  
  return(img)
}