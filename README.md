
# makePalette <img src="imgs/hex_emblema_makePalette.png" align="right" width="120"/>

<!-- badges: start -->

![errero](https://img.shields.io/badge/R-276DC3?style=for-the-badge&logo=r&logoColor=white)
<img src="imgs/logo_infinito.png" width="50"/>
[![Open Source Love](https://badges.frapsoft.com/os/v3/open-source.svg?v=103)](https://github.com/ellerbrock/open-source-badges/)
[![Project-Status:Active](https://www.repostatus.org/badges/latest/active.svg)](https://www.repostatus.org/#active)
[![Linux](https://svgshare.com/i/Zhy.svg)](https://svgshare.com/i/Zhy.svg)
![LinuxMint](https://img.shields.io/badge/Linux_Mint-87CF3E?style=for-the2-badge&logo=linux-mint&logoColor=white)
[![CRAN-status](https://www.r-pkg.org/badges/version/makePalette)](https://CRAN.R-project.org/package=makePalette)
[![Downloads](https://cranlogs.r-pkg.org/badges/grand-total/makePalette?color=yellow)](https://CRAN.R-project.org/package=makePalette)

<!-- badges: end -->

[**makePalette**](https://github.com/musajajorge/makePalette/) is a package containing functions that allow you to create your own color palette from an image, using mathematical algorithms.

## Installation :arrow_double_down:

Install **makePalette** from [**CRAN**](https://CRAN.R-project.org/package=makePalette):

``` r
install.packages("makePalette")
```

## Usage :muscle:

``` r
library(makePalette)
```

You need an image in jpg, png, tiff or similar format, stored in the hard disk of your PC or in some url.

### Examples with the makePaletteCLARA function (Clustering Large Applications)

#### Example 1

<img src="imgs/picture01.jpeg" width="100%"/>

``` r
url1 = "https://github.com/musajajorge/makePalette/raw/main/imgs/picture01.jpeg"
colors <- makePaletteCLARA(url1)
barplot(1:length(colors), col=colors)
```

By default, the function will return a palette of 4 colors.

<img src="imgs/Rplot1.1.png" width="100%" />

If you want a palette with more colors, just specify it in the *n* parameter. 

``` r
colors <- makePaletteCLARA(url1, n = 10)
barplot(1:length(colors), col=colors)
```

<img src="imgs/Rplot1.2.png" width="100%" />

#### Example 2

<img src="imgs/picture03.jpg" width="100%"/>

``` r
url3 = "https://github.com/musajajorge/makePalette/raw/main/imgs/picture03.jpg"
colors <- makePaletteCLARA(url3, n = 6)
barplot(1:length(colors), col=colors)
```

<img src="imgs/Rplot2.png" width="100%" />

#### Example 3

<img src="imgs/picture05.png" width="100%"/>


``` r
url5 = "https://github.com/musajajorge/makePalette/raw/main/imgs/picture05.png"
colors <- makePaletteCLARA(url5, n = 6)
barplot(1:length(colors), col=colors)
```

<img src="imgs/Rplot3.png" width="100%" />

#### Example 4

<img src="imgs/picture06.png" width="100%"/>


``` r
url6 = "https://github.com/musajajorge/makePalette/raw/main/imgs/picture06.png"
colors <- makePaletteCLARA(url6, n = 6)
barplot(1:length(colors), col=colors)
```

<img src="imgs/Rplot4.png" width="100%" />

### Examples with the makePaletteKM function (k-Means)

#### Example 5

<img src="imgs/picture02.jpg" width="100%"/>

``` r
url2 = "https://github.com/musajajorge/makePalette/raw/main/imgs/picture02.jpg"
colors <- makePaletteKM(url2, n = 10)
barplot(1:length(colors), col=colors)
```

<img src="imgs/Rplot5.png" width="100%" />

#### Example 6

<img src="imgs/picture04.png" width="100%"/>

``` r
url4 = "https://github.com/musajajorge/makePalette/raw/main/imgs/picture04.tiff"
colors <- makePaletteKM(url4, n = 6)
barplot(1:length(colors), col=colors)
```

<img src="imgs/Rplot6.png" width="100%" />

#### Example 7

<img src="imgs/picture06.png" width="100%"/>

``` r
url6 = "https://github.com/musajajorge/makePalette/raw/main/imgs/picture06.png"
colors <- makePaletteKM(url6, n = 10)
barplot(1:length(colors), col=colors)
```

<img src="imgs/Rplot7.png" width="100%" />

------------

<p align="center">
    <img src="imgs/item_infinito.png" width="40%">
</p>
