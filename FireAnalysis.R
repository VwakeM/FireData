library(rgdal)
library(sf)
library(tmap)
library(tidyverse)
library(rnaturalearth)
library(rnaturalearthdata)

india <- ne_countries(country = "India", scale = "medium", returnclass = "sf")

bdp_fir_v = st_read(file.choose())
bdp_fir_f = st_read(file.choose())

fire_dec = st_read(file.choose())


bdp_fir_2016 = st_read(file.choose())

bdp_bound = st_read(file.choose()) 

 #bdp_fires_17 = filter(bdp_fires$ACQ_DATE < "2018-12-31")

ggplot() + geom_sf(data = bdp_bound) + geom_sf(data = fire_dec, colour = "#800909") +
  geom_sf(data = bdp_fir_f, colour = "orange")

hist(fire_dec$ACQ_DATE, breaks = "days")



