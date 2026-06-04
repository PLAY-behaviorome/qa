n_sessions <- function(vol_sessions) {
  assertthat::assert_that(!is.null(vol_sessions))
  dim(vol_sessions)[1]
}

sessions_exist <- function(vol_sessions) {
  n_sessions(vol_sessions) > 0
}