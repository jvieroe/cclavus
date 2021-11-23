#' Get lorem ipsum
#'
#' lorem ipsum
#' @param spatial a logical value. Return data of class `sf`? Defaults to `TRUE`
#' @param level lorem ipsum
#' @return data lorem ipsum
#' @examples
#' df <- cc_getAdmin(level == "region")
#' @author Jeppe Vierø
#' @import sf dplyr
#' @export

cc_getAdmin <- function(spatial = TRUE,
                        level = NULL) {

  check_input_cc_getAdmin(spatial = spatial,
                          level = level)

  base_url1 <- "https://api.dataforsyningen.dk/"
  base_url2 <- "?format=geojson"

  if (level == "municipality") {

    url <- base::paste0(base_url1,
                        "kommuner",
                        base_url2)

  } else if (level == "region") {

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

    # tilfoej storkreds

  } else if (level == "zip") {

    url <- base::paste0(base_url1,
                        "postnumre",
                        base_url2)

  }


  data <- sf::read_sf(url)

  data <- data %>%
    sf::st_transform(crs = 4326)

  data <- data %>%
    sf::st_intersection(cclavus::baselayer)

  return(data)


}
