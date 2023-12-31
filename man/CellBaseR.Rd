% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/CellBaseR-methods.R
\name{CellBaseR}
\alias{CellBaseR}
\title{CellBaseR}
\usage{
CellBaseR(
  host = "https://ws.zettagenomics.com/cellbase/webservices/rest/",
  version = "v5",
  species = "hsapiens",
  batch_size = 200L,
  num_threads = 8L
)
}
\arguments{
\item{host}{A character the default host url for cellbase webservices,
e.g. "http://bioinfo.hpc.cam.ac.uk/cellbase/webservices/rest/"}

\item{version}{A character the cellbae API version, e.g. "V4"}

\item{species}{a character specifying the species to be queried, e.g. 
"hsapiens"}

\item{batch_size}{intger if multiple queries are raised by a single method 
call, e.g. getting annotation info for several genes, queries will be sent 
to the server in batches.This slot indicates the size of each batch,e.g. 200}

\item{num_threads}{integer number of  batches to be sent to the server}
}
\value{
An object of class CellBaseR
}
\description{
This is a constructor function for the CellBaseR object
}
\details{
CellbaseR constructor function


This class defines the CellBaseR object. It holds the default
configuration required by CellBaseR methods to connect to the
cellbase web services. By defult it is configured to query human
data based on the GRCh37 genome assembly.
}
\examples{
   cb <- CellBaseR()
   print(cb)
}
\seealso{
\url{https://github.com/opencb/cellbase/wiki} 
and the RESTful API documentation 
\url{http://bioinfo.hpc.cam.ac.uk/cellbase/webservices/}
}
