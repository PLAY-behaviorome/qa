demog_file_release_ok <- function(vol_folders, vol_id) {
  assertthat::assert_that(!is.null(vol_folders))
  assertthat::is.number(vol_id)
  assertthat::assert_that(vol_id > 0)
  
  folder_assets <- databraryr::list_folder_assets(folder_id = vol_folders$folder_id, 
                                                  vol_id = vol_id)
  assertthat::assert_that(!is.null(folder_assets))
  
  demog_file <- folder_assets |>
    dplyr::filter(stringr::str_detect(asset_name, "demographics"))
  
  demog_file$asset_permission == "authorized_users"
}