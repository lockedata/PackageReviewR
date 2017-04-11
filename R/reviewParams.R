#' Specify review parameters
#'
#' @param package       Package to be reviews
#' @param reviewAuthor  Name of reviewer
#' @param reviewDate    Date of review
#' @param packageDeps   Include package dependencies information
#' @param functionDeps  Include function dependency information
#' @param codeCoverage  Include code coverage information
#'
#' @return A list of parameters to be used in [generateReport()]
#' @export
#'
#' @examples
#' reviewParams()
#' reviewParams(reviewAuthor="New author")
reviewParams<-function(package = "PackageReviewR", reviewAuthor = "Steph Locke",
                       reviewDate = Sys.Date(), packageDeps = TRUE,
                       functionDeps = TRUE, codeCoverage = TRUE){

  list(package=package, reviewAuthor = reviewAuthor,
       reviewDate = reviewDate, packageDeps = packageDeps,
       functionDeps = functionDeps, codeCoverage = functionDeps)
}
