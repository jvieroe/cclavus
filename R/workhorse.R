
#' @noRd
check_input_cc_getAdmin <- function(spatial,
                                    level) {

  if(!spatial %in% c(TRUE, FALSE)) {
    stop("Invalid 'spatial' argument provided. Must be logical")
  }

  if(!level %in% c("municipality",
                   "region",
                   "parish",
                   "constituency",
                   "zip")) {
    stop("Invalid 'level' argument provided. Must be one of names(cclavus::admin_levels)")
  }

}
