session_suffix_names_ok <- function(vol_sessions, prefix) {
  suffixes_ok <- purrr::map(vol_sessions$session_name, session_name_suffix_ok) |> 
    purrr::list_c()
  sum(suffixes_ok) == length(suffixes_ok)
}