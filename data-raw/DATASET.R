## code to prepare `DATASET` dataset goes here
library(magrittr)
library(sf)
library(geojsonio)

baselayer <- sf::read_sf("https://api.dataforsyningen.dk/regioner?format=geojson")
baselayer <- sf::st_union(baselayer)

object.size(baselayer)/1000000

temp <- geojsonio::geojson_json(baselayer)

object.size(temp)/1000000

usethis::use_data(temp, overwrite = TRUE, compress = "xz")
