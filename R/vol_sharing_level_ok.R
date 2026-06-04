vol_sharing_level_ok <- function(vol_df, sharing_level = "public_overview_only") {
  assertthat::assert_that(!is.null(vol_df))
  assertthat::has_name(vol_df, "sharing_level")
  assertthat::is.string(sharing_level)
  assertthat::assert_that(sharing_level %in% c("public", "public_overview_only"))
  vol_df$sharing_level == sharing_level
}