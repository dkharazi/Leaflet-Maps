## Import libraries
library(knitr)
library(leaflet)
library(maps)

## Load data
states <- map("state", fill = TRUE, plot = FALSE)

## Plot US
leaflet(data = states) %>%
  addTiles() %>%
  addPolygons(fillColor = topo.colors(10, alpha = NULL), stroke = FALSE)