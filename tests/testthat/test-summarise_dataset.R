test_that("summarise_data works", {
  tsv_file <- system.file("extdata", "example_dataset.tsv", package = "mspackage")
  summary <- summarise_dataset(tsv_file)
  expect_equal(dim(summary)[[2]], 4)
})
