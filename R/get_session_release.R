get_session_release <- function(this_session_id = NULL,
                                vol_id = NULL) {
  assertthat::is.number(this_session_id)
  assertthat::assert_that(this_session_id > 0)
  assertthat::is.number(vol_id)
  assertthat::assert_that(vol_id > 0)
  
  this_session <- databraryr::list_volume_sessions(vol_id = vol_id) |>
    dplyr::filter(session_id == this_session_id)
  
  assertthat::assert_that(!is.null(this_session))
  assertthat::has_name(this_session, "session_release")
  assertthat::is.string(this_session$session_release)
  this_session$session_release
}