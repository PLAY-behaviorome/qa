file_release_matches_session <- function(session_assets = NULL,
                                         session_release = NULL) {
  assertthat::assert_that(!is.null(session_assets))
  assertthat::has_name(session_assets, "asset_permission")
  assertthat::is.string(session_release)
  
  releases_match <- (session_release %in% session_assets$asset_permission)
  length(releases_match) == sum(releases_match)
}