% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CellBaseParam-methods.R
\name{CellBaseParam}
\alias{CellBaseParam}
\title{A Constructor for the CellBaseParam Object}
\usage{
CellBaseParam(
  assembly = character(),
  feature = character(),
  region = character(),
  rsid = character(),
  accession = character(),
  type = character(),
  mode_inheritance_labels = character(),
  clinsig_labels = character(),
  alleleOrigin = character(),
  consistency_labels = character(),
  so = character(),
  source = character(),
  trait = character(),
  include = character(),
  exclude = character(),
  limit = character()
)
}
\arguments{
\item{assembly}{A character the assembly build to query, e.g.GRCh37(default)}

\item{feature}{A character vector denoting the feature/s to be queried}

\item{region}{A character vector denoting the region/s to be queried must be 
in the form 1:100000-1500000}

\item{rsid}{A character vector denoting the rs ids to be queried}

\item{accession}{A caharcter vector of Cinvar accessions}

\item{type}{A caharcter vector of Variant types}

\item{mode_inheritance_labels}{A character vector}

\item{clinsig_labels}{A character vector}

\item{alleleOrigin}{A character vector}

\item{consistency_labels}{A character vector}

\item{so}{A character vector denoting sequence ontology to be queried}

\item{source}{A character vector}

\item{trait}{A character vector denoting the trait to be queried}

\item{include}{A character vector denoting the fields to be returned}

\item{exclude}{A character vector denoting the fields to be excluded}

\item{limit}{A number limiting the number of results to be returned}
}
\value{
an object of class CellBaseParam
}
\description{
CellBaseParam object is used to control what results are returned from the
CellBaseR methods
}
\examples{
cbParam <- CellBaseParam(assembly="GRCh38",feature=c("TP73","TET1"))
print(cbParam)
}
\seealso{
\url{https://github.com/opencb/cellbase/wiki} 
and the RESTful API documentation 
\url{http://bioinfo.hpc.cam.ac.uk/cellbase/webservices/}
}
