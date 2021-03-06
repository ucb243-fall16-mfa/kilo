#' @export
var_dim = function(obj) UseMethod("var_dim")
var_dim.mfa = function(x) {
  #' @title Contribution: variable to dimension
  #' @description Calculates the contribution of a variable to a dimension
  #' @param x is an mfa object
  #' @export
  #' @return ctr_var a n-by-m matrix where n is the variables and m is the dimensions
  #'

  # Initialize the matrix to store the variable contribution
  ctr_var = x$matrixLoadings

  # Loop over all variables, multiplying loading by their weight/impact
  for (j in 1:nrow(ctr_var)){
    ctr_var[j,] = x$aVector[j] * x$matrixLoadings[j,]^2
  }

  return(ctr_var)
}
