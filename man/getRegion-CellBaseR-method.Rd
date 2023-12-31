% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getRegion-methods.R
\name{getRegion,CellBaseR-method}
\alias{getRegion,CellBaseR-method}
\alias{getRegion}
\title{getRegion}
\usage{
\S4method{getRegion}{CellBaseR}(object, ids, resource, param = NULL)
}
\arguments{
\item{object}{an object of class CellBaseR}

\item{ids}{a character vector of the regions to be queried, for example,
 "1:1000000-1200000' should always be in the
form 'chr:start-end'}

\item{resource}{a character vector to specify the resource to be queried}

\item{param}{a object of class CellBaseParam specifying additional param
for the query}
}
\value{
a dataframe with the results of the query
}
\description{
A method to query features within a genomic region from Cellbase web 
  services.
}
\details{
This method retrieves various genomic features from a given
region including genes, snps, clincally relevant variants, proteins, etc.
}
\examples{
   cb <- CellBaseR()
   res <- getRegion(object=cb, ids="17:1000000-1200000", resource="gene")
}
\seealso{
\url{https://github.com/opencb/cellbase/wiki} 
and the RESTful API documentation 
\url{http://bioinfo.hpc.cam.ac.uk/cellbase/webservices/}
}
