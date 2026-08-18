# ---------------------------------------------------------------------------
# helpers.R — display helpers for the guide.
# Drawn with ggplot2 so swatches render the same in HTML now and Typst later.
# ---------------------------------------------------------------------------

library(dplyr)
library(ggplot2)

# Named vector for a palette, in position order (for ggplot scales).
#   pal_vector(palettes, "current")
pal_vector <- function(data, pal) {
  d <- dplyr::arrange(dplyr::filter(data, .data$palette == pal), .data$position)
  d$hex
}

# Draw one palette as a horizontal row of swatches with hex labels.
#   show_palette(palettes, "current")
show_palette <- function(data, pal, labels = TRUE) {
  d <- data |>
    dplyr::filter(.data$palette == pal) |>
    dplyr::arrange(.data$position)

  p <- ggplot2::ggplot(d, ggplot2::aes(x = .data$position, y = 1)) +
    ggplot2::geom_tile(
      ggplot2::aes(fill = .data$hex),
      width = 0.9,
      height = 0.9
    )

  if (labels) {
    p <- p +
      ggplot2::geom_text(
        ggplot2::aes(y = 0.35, label = toupper(.data$hex)),
        family = "Noto Sans Mono",
        size = 2.7,
        colour = "#1A1A1A"
      )
  }

  p +
    ggplot2::scale_fill_identity() +
    ggplot2::coord_equal(clip = "off") +
    ggplot2::ylim(0.15, 1.55) +
    ggplot2::theme_void() +
    ggplot2::theme(plot.margin = ggplot2::margin(0, 0, 0, 0))
}
