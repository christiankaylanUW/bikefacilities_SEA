library(tidyverse)
bikelanes <- st_read("bikelanes.geojson")
bikelanes_clean <- bikelanes %>%
  select(OBJECTID, UNITID, UNITDESC, CATEGORY, MODEL_TYPE, Shape__Length, geometry)
st_write(bikelanes_clean, "bike_facilities_clean.geojson", driver = "GeoJSON")


bikerack <- st_read("bike_racks.geojson")
bikeracks_clean <- bikerack %>%
  select(OBJECTID, UNITID, UNITDESC, CONDITION, RACK_CAPACITY, BIKE_FACILITY, geometry)
st_write(bikeracks_clean, "bike_racks_clean.geojson", driver = "GeoJSON")
