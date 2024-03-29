% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/circularize.R
\name{circularize}
\alias{circularize}
\title{Create x-coordinates so the points form a circle}
\usage{
circularize(
  data,
  y_col = NULL,
  .min = NULL,
  .max = NULL,
  offset_x = 0,
  keep_original = TRUE,
  x_col_name = ".circle_x",
  degrees_col_name = ".degrees",
  origin_col_name = ".origin",
  overwrite = FALSE
)
}
\arguments{
\item{data}{\code{data.frame} or \code{vector}.}

\item{y_col}{Name of column in \code{`data`} with y-coordinates to create x-coordinates for.}

\item{.min}{Minimum y-coordinate. If \code{NULL}, it is inferred by the given y-coordinates.}

\item{.max}{Maximum y-coordinate. If \code{NULL}, it is inferred by the given y-coordinates.}

\item{offset_x}{Value to offset the x-coordinates by.}

\item{keep_original}{Whether to keep the original columns. (Logical)

Some columns may have been overwritten, in which case only the newest versions are returned.}

\item{x_col_name}{Name of new column with the x-coordinates.}

\item{degrees_col_name}{Name of new column with the angles in degrees. If \code{NULL}, no column is added.

Angling is counterclockwise around \code{(0, 0)} and starts at \code{(max(x), 0)}.}

\item{origin_col_name}{Name of new column with the origin coordinates (center of circle). If \code{NULL}, no column is added.}

\item{overwrite}{Whether to allow overwriting of existing columns. (Logical)}
}
\value{
\code{data.frame} (\code{tibble}) with the added x-coordinates and the angle in degrees.
}
\description{
\Sexpr[results=rd, stage=render]{lifecycle::badge("experimental")}

Create the x-coordinates for a \code{vector} of y-coordinates such that
they form a circle.

This will likely look most like a circle when the y-coordinates are somewhat equally distributed,
e.g. a uniform distribution.
}
\examples{
\donttest{
# Attach packages
library(rearrr)
library(dplyr)
library(purrr)
has_ggplot <- require(ggplot2)  # Attach if installed

# Set seed
set.seed(1)

# Create a data frame
df <- data.frame(
  "y" = runif(200),
  "g" = factor(rep(1:5, each = 40))
)

# Circularize 'y'
df_circ <- circularize(df, y_col = "y")
df_circ

# Plot circle
if (has_ggplot){
  df_circ \%>\%
    ggplot(aes(x = .circle_x, y = y, color = .degrees)) +
    geom_point() +
    theme_minimal()
}

#
# Grouped circularization
#

# Circularize 'y' for each group
# First cluster the groups a bit to move the
# circles away from each other
df_circ <- df \%>\%
  cluster_groups(
    cols = "y",
    group_cols = "g",
    suffix = "",
    overwrite = TRUE
  ) \%>\%
  dplyr::group_by(g) \%>\%
  circularize(
    y_col = "y",
    overwrite = TRUE
  )

# Plot circles
if (has_ggplot){
  df_circ \%>\%
    ggplot(aes(x = .circle_x, y = y, color = g)) +
    geom_point() +
    theme_minimal()
}

#
# Specifying minimum value
#

# Specify minimum value manually
df_circ <- circularize(df, y_col = "y", .min = -2)
df_circ

# Plot circle
if (has_ggplot){
  df_circ \%>\%
    ggplot(aes(x = .circle_x, y = y, color = .degrees)) +
    geom_point() +
    theme_minimal()
}

#
# Multiple circles by contraction
#

# Start by circularizing 'y'
df_circ <- circularize(df, y_col = "y")

# Contract '.circle_x' and 'y' towards the centroid
# To contract with multiple multipliers at once,
# we wrap the call in purrr::map_dfr
df_expanded <- purrr::map_dfr(
  .x = 1:10 / 10,
  .f = function(mult) {
    expand_distances(
      data = df_circ,
      cols = c(".circle_x", "y"),
      multiplier = mult,
      origin_fn = centroid,
      overwrite = TRUE
    )
  }
)
df_expanded

if (has_ggplot){
  df_expanded \%>\%
    ggplot(aes(
      x = .circle_x_expanded, y = y_expanded,
      color = .degrees, alpha = .multiplier
    )) +
    geom_point() +
    theme_minimal()
}
}
}
\seealso{
Other forming functions: 
\code{\link{hexagonalize}()},
\code{\link{square}()},
\code{\link{triangularize}()}
}
\author{
Ludvig Renbo Olsen, \email{r-pkgs@ludvigolsen.dk}
}
\concept{forming functions}
