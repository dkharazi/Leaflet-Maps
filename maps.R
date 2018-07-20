## Import libraries
library(knitr)
library(leaflet)
library(maps)
library(plotly)
library(dplyr)

## Load data
states <- map("state", fill = TRUE, plot = FALSE)

## Plot US
leaflet(data = states) %>%
  addTiles() %>%
  addPolygons(fillColor = topo.colors(10, alpha = NULL), stroke = FALSE)

## Table of letters
letters <- data.frame(table(substr(states$names, 1, 1)))

## Donut plot
plot_ly(labels = ~letters$Var1, values = ~letters$Freq) %>%
  add_pie(hole = 0.6) %>%
  layout(title = "First Letter of States", showlegend = FALSE)
