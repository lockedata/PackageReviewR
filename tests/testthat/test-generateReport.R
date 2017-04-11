context("generateReport")

# initial values


test_that("Works for defaults",{

  skip_on_cran()
  testpath <- tempdir()
  dir.create(testpath)
  on.exit(unlink(testpath,recursive = TRUE))
  generateReport(output_dir=testpath)
  expect_true(file.exists(file.path(testpath, "PackageReview.html")))

})
