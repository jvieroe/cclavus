#' Get lorem ipsum
#'
#' lorem ipsum
#' @param as_sf A logical value. Return data as an object of class `sf`? Default is TRUE. If FALSE, imports as a GEOJSON of class `geomultipolygon`
#' @return data lorem ipsum
#' @author Jeppe Vierø
#' @import sf dplyr
#' @export

cc_getBaseLayer <- function(as_sf = TRUE) {

  baselayer <- cclavus::baselayer

  if (af_sf == TRUE) {

    base_layer <- geojsonsf::geojson_sf(baselayer)

  } else if (sf_sf == FALSE) {

    base_layer <- baselayer

  }

  return(base_layer)

}
