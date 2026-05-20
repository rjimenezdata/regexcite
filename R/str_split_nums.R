#' Split a string and convert pieces to numbers
#'
#' @param string A character vector with, at most, one element.
#' @inheritParams stringr::str_split
#'
#' @return A numeric vector.
#' @export
#'
#' @examples
#' str_split_nums("1,2,3", pattern = ",")
#' str_split_nums("a,2,3", pattern = ",")
str_split_nums <- function(string, pattern, n = Inf) {
  stopifnot(is.character(string), length(string) <= 1)
  if (length(string) == 1) {
    as.numeric(stringr::str_split(string = string, pattern = pattern, n = n)[[1]])
  } else {
    numeric()
  }
}
