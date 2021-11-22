#' Get voting station data
#'
#' This function extracts spatial data on voting stations in Denmark from \url{https://info.aws.dk/afstemningsomraader/}
#' @param spatial a logical value. Return data of class `sf`? Defaults to `TRUE`
#' @return data on danish voting stations
#' @examples
#' df <- cc_getAdmin(level == "region")
#' @author Jeppe Vierø
#' @import
#' @export

cc_getAdmin <- function(spatial = TRUE,
                        level = NULL) {

  base_url1 <- "https://api.dataforsyningen.dk/"
  base_url2 <- "?format=geojson"

  if (level == "municipality") {

    url <- base::paste0(base_url1,
                        "kommuner",
                        base_url2)

  } else if (level == "regions") {

    url <- base::paste0(base_url1,
                        "regioner",
                        base_url2)

  } else if (level == "parish") {

    url <- base::paste0(base_url1,
                        "sogne",
                        base_url2)

  } else if (level == "constituency") {

    url <- base::paste0(base_url1,
                        "afstemningsomraader",
                        base_url2)

  } else if (level == "zip") {

    url <- base::paste0(base_url1,
                        "postnumre",
                        base_url2)

  }



}
