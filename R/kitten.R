##' Download a kitten picture from placekitten.com
##' @title Download a kitten
##' @param width Width, in pixels
##' @param height Height, in pixels
##' @param destfile File to save into.
##' @param ... Additional parameters passed through to
##' \code{\link{download.file}}
##' @return The filename saved in (useful when using the default
##' \code{destfile})
##' @export
kitten <- function(width, height, destfile, ...) {
  url <- sprintf("http://placekitten.com/g/%d/%d", width, height)
  download.file(url, destfile, ...)
  destfile
}

hidden_function <- function() {
  message("hello")
}

##' Download a dog picture from placekitten.com
##' @title Download a dog
##' @param width Width, in pixels
##' @param height Height, in pixels
##' @param destfile File to save into.
##' @param ... Additional parameters passed through to
##' \code{\link{download.file}}
##' @return The filename saved in (useful when using the default
##' \code{destfile})
##' @export
dog <- function(width, height, destfile, ...) {
  stop("go away dogs are smelly")
}
