
#' Split a string by pattern.
#'
#' @param x A character string to split
#' @param split A character pattern to split on.
#'
#' @returns A character vector.
#' @export
#'
#' @examples
#' strsplit1("a,b,c", ",")
strsplit1 <- function(x, split) {
  strsplit(x, split = split)[[1]]
}
