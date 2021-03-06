% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/interp_gps.R
\name{interp_init}
\alias{interp_init}
\title{Initialize data before interpolation}
\usage{
interp_init(path = ".")
}
\arguments{
\item{path}{(optional) path where input and output are located.
This is not necessary if the working directory is already set to
that location.}
}
\value{
Nothing. Only \code{.exif$base} is created.
}
\description{
List photos in input directory and creates an environment for storing
data during interpolation iterative process. This is a mandatory prerequisite
for interpolating positions.
}
\details{
Search for image files in \code{input/photo} and stores them in a data.frame.

As the process is iterative (a succession of manual modifications in
JOSM and interpolations in R), it is necessary to keep track of
intermediate results. Therefore, a temporary environment (named .exif)
is created.

Once interpolation is over, it is possible to delete that environment
with \code{\link{interp_cleanup}}.
}
\examples{
interp_init()
}
