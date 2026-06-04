file_exists <- function(session_assets = NULL,
                         prefix = NULL,
                         suffix = NULL) {
  assertthat::assert_that(!is.null(session_assets))
  assertthat::has_name(session_assets, "asset_name")
  assertthat::is.string(prefix)
  assertthat::is.string(suffix)
  
  asset_names <- session_assets$asset_name
  target_fn <- paste0(prefix, suffix)
  if (!(target_fn %in% asset_names)) {
    0
  } else {
    sum(target_fn %in% asset_names)
  }
}

naturalPlay_exists <- function(session_assets, prefix, suffix = "NaturalPlay") {
  file_exists(session_assets = session_assets,
               prefix = prefix,
               suffix = suffix)
}

houseWalkthrough_exists <- function(session_assets, prefix, suffix = "HouseWalkthrough") {
  file_exists(session_assets = session_assets,
               prefix = prefix,
               suffix = suffix)
}

structuredPlay_exists <- function(session_assets, prefix, suffix = "StructuredPlay") {
  file_exists(session_assets = session_assets, prefix = prefix, suffix = suffix)
}

questionnaires_exists <- function(session_assets, prefix, suffix = "Questionnaires") {
  file_exists(session_assets = session_assets,
               prefix = prefix,
               suffix = suffix)
}

decibel_exists <- function(session_assets, prefix, suffix = "Decibel") {
  file_exists(session_assets = session_assets,
               prefix = prefix,
               suffix = suffix)
}