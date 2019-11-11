library(ncdf4)


setwd("sss")

ncin =  nc_open("data_GFDL_CM3.cdf")
lon = ncvar_get(ncin, "lon")
lat = ncvar_get(ncin, "lat")
idex.array = ncvar_get(ncin, "spei-all")
slice = idex.array[,,1]

image(lon, lat, slice)
