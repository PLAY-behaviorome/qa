check_session_files <- function(session_id = NULL, session_name = NULL, 
                                vol_id = NULL) {
  assertthat::is.number(session_id)
  assertthat::assert_that(session_id > 0)
  assertthat::is.number(vol_id)
  assertthat::assert_that(vol_id > 0)
  
  file_prefix <- paste0(session_name, "_")
  assertthat::is.string(file_prefix)
  
  natural_play <- NA
  house_walkthrough <- NA
  structured_play <- NA
  questionnaires <- NA
  decibel <- NA
  release_levels <- NA
  
  session_release <- get_session_release(session_id, vol_id)
  assertthat::is.string(session_release)
  
  session_assets <- databraryr::list_session_assets(session_id, vol_id = vol_id)
  
  if (!is.null(session_assets)) {
    natural_play <- naturalPlay_exists(session_assets, prefix = file_prefix)
    house_walkthrough <- houseWalkthrough_exists(session_assets, prefix = file_prefix)
    structured_play <- structuredPlay_exists(session_assets, prefix = file_prefix)
    questionnaires <- questionnaires_exists(session_assets, prefix = file_prefix)
    decibel <- decibel_exists(session_assets, prefix = file_prefix)
    release_levels <- file_release_matches_session(session_assets, session_release)
  }
  
  tibble::tibble(
    session_id = session_id,
    session_name = session_name,
    natural_play = natural_play,
    house_walkthrough = house_walkthrough,
    structured_play = structured_play,
    questionnaires = questionnaires,
    decibel = decibel,
    release_levels = release_levels
  )
}