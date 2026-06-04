folder_name_ok <- function(vol_folders = NULL, prefix = NULL) {
  assertthat::assert_that(!is.null(vol_folders))
  assertthat::has_name(vol_folders, "folder_name")
  assertthat::is.string(prefix)
  
  names <- vol_folders$folder_name
  stringr::str_detect(names, "demographics")
  
  prefix_ok <- stringr::str_detect(names, paste0("^", prefix))
  postfix_ok <- stringr::str_detect(names, "demographics$")
  prefix_ok & postfix_ok
}