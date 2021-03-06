% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/match_matrix_dimensions.R
\name{match_matrix_dimensions}
\alias{match_matrix_dimensions}
\title{Match the dimensions of a query matrix to a profile matrix}
\usage{
match_matrix_dimensions(query, profile_matrix)
}
\arguments{
\item{query}{a square matrix containing features for pairs of proteins}

\item{profile_matrix}{the profile matrix for which interactions are being 
predicted}
}
\value{
a square matrix with the same row and column names as the input 
profile matrix, for use in interaction prediction
}
\description{
Match the row and column names of a square feature matrix to the row names
of a profile matrix, adding rows/columns containing \code{NA}s when 
proteins in the profile matrix are missing from the feature matrix.
}
\examples{
data(gold_standard)
subset <- adjacency_matrix_from_list(gold_standard[seq(1, 200)])
target <- adjacency_matrix_from_list(gold_standard)
matched <- match_matrix_dimensions(subset, target)
dim(subset)
dim(target)
dim(matched)

}
