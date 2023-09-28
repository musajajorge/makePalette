utils::globalVariables(c("kmeans"))
#'
#' Make your color palette with KMeans algorithm
#'
#' @description Creates a color palette from an image, using the KMeans algorithm
#'
#' @import terra
#' @import grDevices
#' @import prismatic
#'
#' @param photo Image location path. It can also be a URL address.
#' @param n Number of elements to be generated in the color palette. The default value is 4.
#'
#' @return A palette of colors
#' @export
#'
#' @examples
#' makePaletteKM(system.file("extdata", "picture02.jpg", package="makePalette"))
#' makePaletteKM(system.file("extdata", "picture04.png", package="makePalette"), 6)
#' makePaletteKM(system.file("extdata", "picture05.jpg", package="makePalette"), 10)
#' MyPalette = makePaletteKM(system.file("extdata", "picture05.jpg", package="makePalette"), 10)
#' barplot(1:10, col=MyPalette)
#'

makePaletteKM <- function(photo, n=4){
  col <- terra::values(rast(photo))
  df <- data.frame(col)
  colnames(df) <- c("col_R","col_G","col_B")
  df <- unique(df)
  df2 <- rgb2hsv(r=df$col_R, g=df$col_G, b=df$col_B)
  df2 <- data.frame(t(df2))
  modelK <- kmeans(df2, centers=n)
  centers <- modelK$centers
  colors <- vector(length=nrow(centers))
  for (i in 1:nrow(centers)){
    colors[i] = hsv(h=centers[i,1], s=centers[i,2], v=centers[i,3])
  }
  return(prismatic::color(colors))
}
