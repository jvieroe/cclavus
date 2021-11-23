## code to prepare `DATASET` dataset goes here

# baselayer <- sf::read_sf("https://api.dataforsyningen.dk/regioner?format=geojson")
# baselayer <- sf::st_union(baselayer)
# baselayer <- geojsonio::geojson_json(baselayer)

usethis::use_data(baselayer, overwrite = TRUE, compress = "xz")
