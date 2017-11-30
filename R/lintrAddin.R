#' Lint the current document
#'
#' Simply place your cursor on the document and run the addin
#'
#' @import lintr
#' @import rstudioapi
#' @export

lintrAddin <- function() {

  # Get the document context.
  context <- rstudioapi::getActiveDocumentContext()

  # Get the path of the document
  path <- context$path

  # Check it to see if it is blank
  if (path == ""){

      # It is so send an error message to the console
    message(paste("Error in lintrAddin: You must click on the document you",
                  "want to lint first.  Then run the addin."))
  } else {

    # It isn't so lint the document
    lintr::lint(path)
  }

}
