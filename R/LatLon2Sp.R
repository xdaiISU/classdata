#' Translate latitude & longitude to the Cartesian coordinate on a unit sphere.
#'
#' lat A vector containing the latitudes
#' lon A vector containing the corresponding longitudes
#'
#' @return If `lat` and `lon` are scalars (length 1), then a vector for the Cartesian coordinate. If `lat` and `lon` have length n >= 1, then return a data frame with n rows and three columns names 'x', 'y', and 'z'
#' @examples
#' # Get the Cartesian coordinates for Ames, IA
#' LatLon2Sp(42.0308, -93.6319)
#' @export
#' 
LatLon2Sp <- function(lat, lon) {

  stopifnot(length(lat) == length(lon))

  lat <- as.numeric(lat)
  lon <- as.numeric(lon)

  theta <- (90 - lat) / 180 * pi
  phi <- lon / 180 * pi

  x <- sin(theta) * cos(phi)
  y <- sin(theta) * sin(phi)
  z <- cos(theta)

  r <- sqrt(x^2 + y^2 + z^2)
  x <- x / r
  y <- y / r
  z <- z / r

  if (length(lat) > 1) {
    data.frame(x=x, y=y, z=z)
  } else {
    c(x=x, y=y, z=z)
  }
}
