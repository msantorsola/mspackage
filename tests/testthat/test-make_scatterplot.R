test_that("multiplication works", {
  tsv_file <- system.file("extdata", "dataset.tsv", package = "packagetraining")
  scatterplot <- make_scatterplot(tsv_file)
  # expect_that("ggplot" %in% class(scatterplot), equals(TRUE)) # deprecated
  expect_true("ggplot" %in% class(scatterplot), equals(TRUE))
})
