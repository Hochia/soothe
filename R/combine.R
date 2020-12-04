#' Combine multimedia files in a folder
#'
#' @param folder character
#' @param multimedia character, specify the multimedia type, i.e. ".mp3", ".mp4", ".wav".
#'
#' @return character
#' @export
#'
#' @examples
#' # folder named "Heart_of_Darkness"
#' combine_mm("Heart_of_Darkness")
combine_mm = function(folder, multimedia = ".mp3") {
  x = dir(folder, multimedia)
  files = stringr::str_c(x, collapse = "|")
  cat(paste0("ffmpeg -i", " \"concat:", files, "\" ", "-c copy ", folder, "_all", multimedia))
}

