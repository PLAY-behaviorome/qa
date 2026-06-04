folder_contains_demog_file <- function(vol_folders, vol_id, file_prefix) {
  assertthat::assert_that(!is.null(vol_folders))
  assertthat::is.number(vol_id)
  assertthat::assert_that(vol_id > 0)
  
  folder_assets <- databraryr::list_folder_assets(folder_id = vol_folders$folder_id, 
                                                  vol_id = vol_id)
  assertthat::assert_that(!is.null(folder_assets))
  
  paste0(session_folder_prefix, "demographics") %in% folder_assets$asset_name
}