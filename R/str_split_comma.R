#' Split a string on commas
#'
#' @param string A character vector with, at most, one element.
#' @param n Maximum number of pieces to return. Default is Inf.
#'
#' @return A character vector.
#' @export
#'
#' @examples
#' x <- "alfa,bravo,charlie,delta"
#' str_split_comma(x)
#' str_split_comma(x)
#'
#' y <- "a,b,c"
#' str_split_one(y, n = 2)
str_split_comma <- function(string, n = Inf) {
  stopifnot(is.character(string), length(string) <= 1)

  if (length(string) == 1) {
    stringr::str_split(string = string, pattern = ",", n = n)[[1]]
  } else {
    character()
  }
}
