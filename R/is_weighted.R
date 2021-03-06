#' Test whether a network is weighted
#'  
#' @param network the network to analyze 
#' 
#' @return true if the input network is a square numeric matrix with more than
#'   two values 
#' 
#' @examples 
#' data(gold_standard)
#' adj <- adjacency_matrix_from_list(gold_standard)
#' is_weighted(adj) ## returns FALSE
#' 
#' @importFrom tester is_square_matrix is_numeric_matrix
#' @importFrom dplyr n_distinct
#' 
#' @export
is_weighted <- function(network) {
  # check input is square integer, or numeric matrix
  square <- is_square_matrix(network)
  if (!square)
    stop("input is not a square matrix")
  dbl <- is_numeric_matrix(network)
  if (!dbl)
    stop("input could not be converted to numeric matrix")
  # convert to numeric 
  network <- network * 1
  # network should contain at least three different non-missing values
  n_distinct(c(network)) >= 3
}
