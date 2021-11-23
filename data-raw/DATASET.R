## code to prepare `DATASET` dataset goes here
library(magrittr)
library(sf)

baselayer <- sf::read_sf("https://api.dataforsyningen.dk/regioner?format=geojson")
baselayer <- sf::st_union(baselayer)

usethis::use_data(baselayer, overwrite = TRUE, compress = "xz")
