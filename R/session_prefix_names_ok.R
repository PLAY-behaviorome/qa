session_prefix_names_ok <- function(vol_sessions, prefix) {
  prefixes_ok <- purrr::map(vol_sessions$session_name, session_name_prefix_ok, prefix = prefix) |> 
    purrr::list_c()
  sum(prefixes_ok) == length(prefixes_ok)
}
