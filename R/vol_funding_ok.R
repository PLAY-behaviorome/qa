vol_funding_ok <- function(vol_df) {
  assertthat::assert_that(!is.null(vol_df))
  assertthat::has_name(vol_df, "fundings")
  funding_not_empty <- (length(vol_df$fundings[[1]]) > 0)
  funding_not_empty
}
