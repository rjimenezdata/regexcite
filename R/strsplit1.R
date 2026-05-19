
#' Split a string by pattern.
#'
#' @param string A character string to split
#' @param pattern A character pattern to split on.
#' @param n A number of pieces to return. Defaults to Inf.
#'
#' @returns A character vector.
#' @export
#'
#' @examples
#' str_split_one("a,b,c", ",")
str_split_one <- function(string, pattern, n = Inf) {
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = pattern, n = n)[[1]]
  } else {
    character()
  }
}
