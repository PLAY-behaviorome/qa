n_folders <- function(vol_folders) {
  assertthat::assert_that(!is.null(vol_folders))
  dim(vol_folders)[1]
}

folders_exist <- function(vol_folders) {
  n_folders(vol_folders) > 0
}

only_one_folder <- function(vol_folders) {
  assertthat::assert_that(!is.null(vol_folders))
  n_folders == 1
}