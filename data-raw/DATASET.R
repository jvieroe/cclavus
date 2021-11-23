## code to prepare `DATASET` dataset goes here
library(magrittr)
library(sf)
library(geojsonio)
library(geojsonsf)

baselayer <- sf::read_sf("https://api.dataforsyningen.dk/regioner?format=geojson")
baselayer <- sf::st_union(baselayer)

temp <- geojsonio::geojson_json(baselayer)


sff <- geojson_sf(temp)

object.size(sff)/1000000


usethis::use_data(temp, overwrite = TRUE, compress = "xz")


df <- cclavus::temp
