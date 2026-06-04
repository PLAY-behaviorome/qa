session_name_suffix_ok <- function(name) {
  assertthat::is.string(name)
  
  suffix <- stringr::str_extract(name, "[0-9]{3}$")
  as.numeric(suffix) > 0
}