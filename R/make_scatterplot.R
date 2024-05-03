make_scatterplot <- function(tsv_file) {
  data <- read_tsv(tsv_file)

  sample_vars <- sample(
    names(data %>% select(where(is.numeric))),
    2
  )

  plot <- data %>%
    ggplot(aes(x = .data[[sample_vars[[1]]]], y = .data[[sample_vars[[2]]]])) +
    geom_point()

  return(plot)
}
