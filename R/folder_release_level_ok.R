folder_release_level_ok <- function(vol_folders = NULL) {
  assertthat::assert_that(!is.null(vol_folders))
  assertthat::has_name(vol_folders, "folder_release")
  vol_folders$folder_release == "authorized_users"
}