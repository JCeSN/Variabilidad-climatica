library(ncdf4)


setwd("C:/Users/julio/Documents/R/New_beginning//Datos_projet")

ncin =  nc_open("data_GFDL_CM3.cdf")
print(ncin)
lon = ncvar_get(ncin, "lon")
lat = ncvar_get(ncin, "lat")
idex.array = ncvar_get(ncin, "spei-all")
dim(lon)
dim(lat)
dim(idex.array)
slice = idex.array[,,1]

image(lon, lat, slice)

# unidades= ncatt_get(ncin, "spei-all", "units")
# unitlon = ncatt_get(ncin, "lon", "units")
# unit = ncatt_get(ncin, "T", "units")
# unit
# slice = idex.array(,,1)
# image(lon, lat, slice)


