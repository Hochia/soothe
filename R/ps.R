#' Powershell command
#'
#' @param cmd character
#'
#' @return character
#'
ps = function(cmd) {
  paste0("powershell -command \"", cmd, "\"")
}
