% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sundance.R
\name{sundance}
\alias{sundance}
\title{Summarize temperature data}
\usage{
sundance(my_wxdat)
}
\arguments{
\item{my_wxdat}{An \code{import_wxdat} object.}
}
\value{
This function returns a nine (9) column \code{\link[tibble:tibble]{tibble}}.

\describe{
\item{\strong{RID}}{The unique record ID. The record ID
\code{\link[base:paste]{paste}}'s Date and PlotID to  create a unique
record ID.}
\item{\strong{PlotID}}{The unique ID number for the long-term monitoring
plot.}
\item{\strong{Date}}{The date the data were recorded.}
\item{\strong{TEMP_mean}}{The mean daily temperature.}
\item{\strong{TMIN}}{The minimum daily temperature.}
\item{\strong{TMAX}}{The maximum daily temperature.}
\item{\strong{n}}{The number of records for that day.}
\item{\strong{TMIN_time}}{The time of minimum daily temperature.}
\item{\strong{TEMP_mean}}{The time of maximum daily temperature.}
}
}
\description{
This function summarizes temperature data from Onset loggers.
}
\details{
This function summarizes temperature data from Onset loggers. It
uses a list produced from \code{\link{import_wxdat}} and returns a data
frame of summarized temperature data.
}
\examples{
\dontrun{
library("rainDanceR")

# Generate list of files
file_list <- list.files(path = system.file("extdata", package = "rainDanceR"),
                        pattern = ".csv", full.names = TRUE, recursive = FALSE)

# Read file into R
my_temp <- import_wxdat(file_list[2])

# Process precipitation data
sundance(my_temp)
}
}
\seealso{
\code{\link{import_wxdat}}
}