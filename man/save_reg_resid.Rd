% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/regression.R
\name{save_reg_resid}
\alias{save_reg_resid}
\title{Save regression residuals}
\usage{
save_reg_resid(result)
}
\arguments{
\item{result}{Return value from \code{\link{regression}}}
}
\description{
Save regression residuals
}
\details{
See \url{http://mostly-harmless.github.io/radiant/quant/regression.html} for an example in Radiant
}
\examples{
result <- regression("diamonds", "price", c("carat","clarity"))
save_reg_resid(result)
}

