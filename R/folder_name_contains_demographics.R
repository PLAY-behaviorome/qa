folder_name_contains_demographics <- function(vol_folders) {
  assertthat::assert_that(!is.null(vol_folders))
  assertthat::has_name(vol_folders, "folder_name")
  names <- vol_folders$folder_name
  sum(stringr::str_detect(names, "demographics")) == length(names)
}