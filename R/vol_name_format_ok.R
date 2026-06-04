vol_name_format_ok <- function(vol_df) {
  assertthat::assert_that(!is.null(vol_df))
  assertthat::has_name(vol_df, "title")
  prefix <- "PLAYProject_"
  prefix_ok <- stringr::str_detect(vol_df$title, paste0("^", prefix))
  postfix_ok <- stringr::str_detect(vol_df$title, "[A-Z1-2]{5}$")
  prefix_ok & postfix_ok
}
