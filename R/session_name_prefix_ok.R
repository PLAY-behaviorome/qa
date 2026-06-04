session_name_prefix_ok <- function(name, prefix) {
  assertthat::is.string(name)
  assertthat::is.string(prefix)
  session_prefix <- stringr::str_extract(name, paste0("PLAY_[A-Z0-9]{5}_"))
  prefix == session_prefix
}