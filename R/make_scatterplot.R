#' Create random scatterplot
#'
#' @param tsv_file A string of the path of a tsv file with data to import
#'
#' @return A plot object from randmly chosen variables
#' @export
#'
#'
#' @examples
#' \dontrun{
#' make_scatterplot("/path/to/dataset.tsv")
#' }
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
