test_that("multiplication works", {
  tsv_file <- system.file("extdata",  "example_dataset.tsv", package = "mspackage")
  scatterplot = make_scatterplot(tsv_file)
  expect_that("ggplot" %in% class(scatterplot), equals(TRUE))
})
