% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/visualize.R
\name{plot_profiles}
\alias{plot_profiles}
\title{Plot profile matrix of ADPROCLUS solution}
\usage{
plot_profiles(model, title = NULL, label_color = "black", ...)
}
\arguments{
\item{model}{Object of class \code{adpc}. (Low dimensional) ADPROCLUS
solution}

\item{title}{String. Optional title.}

\item{label_color}{String. The color of the text labels. Default: "black"}

\item{...}{Additional arguments passing to the
\code{corrplot::corrplot()} function, to customize the plot.}
}
\value{
Invisibly returns the input model.
}
\description{
Produce a representation of profile matrix \eqn{P}
(or \eqn{C} for low dimensional solution) of an ADPROCLUS
solution of class \code{adpc}.
The plot displays the profiles in the style of a correlation plot.
\strong{NOTE:} This function can also be called through the
\code{plot(model, type = "profiles")} function with model an object of
class \code{adpc}.
}
\examples{
# Loading a test dataset into the global environment
x <- stackloss

# Quick clustering with K = 3 clusters
clust <- adproclus(x, 3)

# Plot the profile scores of each cluster
plot_profiles(clust)
}
