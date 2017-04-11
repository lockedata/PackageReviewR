#' Generate report via UI
#'
#' @param template An alternative template, if required
#' @param parameters Parameters to be provided to the report, based on [reviewParams()]
#' @param ... Additional arguments to [rmarkdown::render()]
#'
#' @export
#'
#' @examples
#' generateReport()
generateReport<-function(template=NULL, parameters= reviewParams(), ...){
  if(is.null(template))
    template <- system.file("templates","PackageReview.Rmd"
                            , package = "PackageReviewR")
  rmarkdown::render(template, params = parameters, ...)
}
