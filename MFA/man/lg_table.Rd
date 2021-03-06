% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lg_table.R
\name{lg_table}
\alias{lg_table}
\title{Lg Coefficient Table - lg_table}
\usage{
lg_table(dataset, sets)
}
\arguments{
\item{dataset}{is the input data in the form of a  data.frame object}

\item{sets}{is a list containing indices (or names) of the variables to be parsed for the analysis}
}
\description{
Calculates Lg coefficient table between multiple sets from a dataset
}
\examples{
filename = system.file("extdata", "wines.csv", package = "MFA")
dataset = read.csv(filename, header=TRUE, check.names=FALSE)
lg_table(dataset, sets = list(1:3, 4:5, 6:10))

}

