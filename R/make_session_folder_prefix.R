make_session_folder_prefix <- function(vol_id) {
  assertthat::is.number(vol_id)
  assertthat::assert_that(vol_id > 0)
  
  vol_df <- databraryr::get_volume_by_id(vol_id = vol_id)
  assertthat::assert_that(!is.null(vol_df))
  assertthat::has_name(vol_df, "title")
  
  paste0("PLAY_", stringr::str_extract(vol_df$title, "[A-Z1-2]{5}$"), "_")
}