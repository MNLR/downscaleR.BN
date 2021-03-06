% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/predictBN.R
\name{predictBN}
\alias{predictBN}
\title{Downscale with Bayesian Networks}
\usage{
predictBN(cbn, x, y = NULL, output = "probabilities",
  prediction.type = "exact", event = "1", threshold.vector = NULL,
  output.attr.evidence = FALSE, cl = NULL, stop.cluster = TRUE,
  parallelize = FALSE, n.cores = NULL, cluster.type = "FORK")
}
\arguments{
\item{cbn}{Climatic Bayesian Network, as returned by either
\code{buildCBN() or buildDynamicCBN()}.}

\item{x}{may be output of prepareNewData for predictive non-past, NULL for a no-G dynamic
CBN or a single dataset for a G dynamic CBN (i.e. dynamic CBN do not accept members).}

\item{output}{Options are: \code{"probabilities"}, \code{"event"} and
\code{"probabilities.list"}. You should probably not use the last one. Note that if
\code{prediction.type = "simulation"}, output is forced to \code{"event"}.}

\item{prediction.type}{Options are \code{"exact"}, \code{"approximate"} and \code{"simulation"}.
Exact inference requires a compilable junction.}
}
\description{
Downscale with Bayesian Networks
}
\author{
M.N. Legasa
}
