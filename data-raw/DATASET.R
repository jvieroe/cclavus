## code to prepare `DATASET` dataset goes here
library(magrittr)

url_baselayer <- "https://api.dataforsyningen.dk/regioner?format=geojson"
baselayer <- sf::read_sf(url_baselayer)

baselayer <- baselayer %>%
  sf::st_transform(crs = 4326) %>%
  sf::st_union()
  dplyr::select(geometry)

usethis::use_data(DATASET, overwrite = TRUE)
