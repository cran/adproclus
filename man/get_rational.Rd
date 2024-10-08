% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_starts.R
\name{get_rational}
\alias{get_rational}
\title{Generate start allocation based on a priori profiles}
\usage{
get_rational(data, starting_profiles)
}
\arguments{
\item{data}{Object-by-variable data matrix of class \code{matrix} or
\code{data.frame}.}

\item{starting_profiles}{A matrix where each row represents the profile
values for a cluster. Needs to be of same dimensions as \eqn{P}.}
}
\value{
\code{get_rational()} returns a list with the following components:
  \describe{
  \item{\code{type}}{A character string denoting the type of start
  ('Rational Start')}
  \item{\code{A}}{An initial Membership matrix}}
}
\description{
If cluster profiles are given a priori, this function can be used to compute
the conditionally optimal cluster membership matrix A which can then be
used as a rational starting allocation for the (low dimensional) ADPROCLUS
procedure (see \code{\link{adproclus}} and \code{\link{adproclus_low_dim}}).
}
\details{
The function uses the same quadratic loss function and minimization method as
the (low dimensional) ADPROCLUS procedure does to find the next conditionally
 optimal membership matrix A. (for details, see Depril et al., 2012). For the full
 dimensional ADPROCLUS it uses the algorithm \code{ALS2} and not \code{ALS1}.

\strong{Warning:} This function does \emph{not} obtain an ADPRCOLUS model. To
perform additive profile clustering, see \code{\link{adproclus}}.
}
\examples{
# Obtain data from standard data set "Stackloss"
x <- stackloss

# Obtaining a user-defined rational start profile matrix
# (here the first 4 rows of the data)
start_allocation <- get_rational(x, x[1:4, ])$A

}
\references{
Depril, D., Van Mechelen, I., & Wilderjans, T. F.
  (2012). Lowdimensional additive overlapping clustering.
  \emph{Journal of classification, 29,} 297-320.
}
\seealso{
\describe{
  \item{\code{\link{adproclus}}, \code{\link{adproclus_low_dim}}}{for details
   about membership and profile matrices}
  \item{\code{\link{get_random}}}{for generating random starts}
  \item{\code{\link{get_semirandom}}}{for generating semi-random starts}
}
}
