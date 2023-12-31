
##############################################################################
#' getTranscriptByGene
#' 
#' A convienice method to fetch transcripts for specific gene/s
#' @param object an object of class CellBaseR
#' @param id a charcter vector of HUGO symbol (gene names)
#' @param param an object of class CellBaseParam
#' @return a dataframe of the query result
#' @examples 
#' cb <- CellBaseR()
#' res <- getTranscriptByGene(cb, "TET1")
#' @export
getTranscriptByGene <- function(object, id, param=NULL){
  
  res <- getGene(object = object, ids = id, resource = "transcript",
                 param = param)
  res
}
##############################################################################
#' getGeneInfo
#' 
#' A convienice method to fetch gene annotations specific gene/s
#' @param object an object of class CellBaseR
#' @param id a charcter vector of HUGO symbol (gene names)
#' @param param an object of class CellBaseParam
#' @return a dataframe of the query result
#' @examples 
#' cb <- CellBaseR()
#' res <- getGeneInfo(cb, "TET1")
#' @export
getGeneInfo <- function(object, id, param=NULL){

  res <- getGene(object = object, ids = id, resource = "info",
                 param = param)
  res
}

##############################################################################
#' getProteinInfo
#' 
#' A convienice method to fetch annotations for specific protein/s
#' @param object an object of class CellBaseR
#' @param id a charcter vector of Uniprot Ids 
#' @param param an object of class CellBaseParam
#' @return a dataframe of the query result
#' @examples 
#' cb <- CellBaseR()
#' res <- getProteinInfo(cb, "O15350")
#' @export
getProteinInfo <- function(object, id, param=NULL){
  
  res <- getProtein(object = object, ids = id, resource = "info",
                    param = param)
  res
}
##############################################################################

##############################################################################
#' getConservationByRegion
#' 
#' A convienice method to fetch conservation data for specific region/s
#' @param id a charcter vector of genomic regions, eg 17:1000000-1100000
#' @param object an object of class CellBaseR
#' @param param an object of class CellBaseParam
#' @return a dataframe of the query result
#' @examples 
#' cb <- CellBaseR()
#' res <- getConservationByRegion(cb, "17:1000000-1189811")
#' @export
getConservationByRegion <- function(object, id, param=NULL){

  res <- getRegion(object = object, ids = id, resource = "conservation",
                   param = param)
  res
}
##############################################################################
#' getRegulatoryByRegion
#' 
#' A convienice method to fetch regulatory data for specific region/s
#' @param object an object of class CellBaseR
#' @param id a charcter vector of genomic regions, eg 17:1000000-1100000
#' @param param an object of class CellBaseParam
#' @return a dataframe of the query result
#' @examples 
#' cb <- CellBaseR()
#' res <- getRegulatoryByRegion(cb, "17:1000000-1189811")
#' @export
getRegulatoryByRegion <- function(object, id, param=NULL){

  res <- getRegion(object = object, ids = id, resource = "regulatory",
                   param = param)
  res
}
##############################################################################

##############################################################################
#' getVariantAnnotation
#' 
#' A convienice method to fetch variant annotation for specific variant/s
#' @param object an object of class CellBaseR
#' @param id a charcter vector of length < 200 of genomic variants,
#'  eg 19:45411941:T:C
#' @param param an object of class CellBaseParam
#' @return a dataframe of the query result
#' @examples 
#' cb <- CellBaseR()
#' res <- getVariantAnnotation(cb, "19:45411941:T:C")
#' @export
getVariantAnnotation <- function(object, id, param=NULL){
  
  res <- getVariant(object = object, ids = id, resource = "annotation",
                    param = param)
  res
}