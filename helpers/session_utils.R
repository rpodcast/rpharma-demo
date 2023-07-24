saveInterfaceLocal <- function(id, callback) {
  root_dir <- "/home/eric/shinysessions"
  
  if (is.null(root_dir)) {
    root_dir <- fs::file_temp()
  }
  
  stateDir <- fs::path(root_dir, "shiny_bookmarks", id)
  
  if (!fs::dir_exists(stateDir)) {
    fs::dir_create(stateDir)
  }
  
  callback(stateDir)
}

loadInterfaceLocal <- function(id, callback) {
  # grab key variables from ShinyOptions
  root_dir <- "/home/eric/shinysessions"

  if (is.null(root_dir)) {
    root_dir <- fs::file_temp()
  }
  
  stateDir <- fs::path(root_dir, "shiny_bookmarks", id)
  callback(stateDir)
}
