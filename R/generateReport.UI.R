#' Generate report via UI
#'
#' @param template An alternative template, if required
#' @param ... Additional arguments to [rmarkdown::render()]
#'
#' @export
#'
#' @examples
#' \dontrun{
#' generateReport.UI()
#' }
generateReport.UI<-function(template=NULL, ...){
  if(is.null(template))
    template <- system.file("templates","PackageReview.Rmd"
                          , package = "PackageReviewR")
  rmarkdown::render(template, params = "ask", ...)
}
