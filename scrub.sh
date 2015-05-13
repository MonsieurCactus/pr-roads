# download from internet
# see for more info
# http://opendata.stackexchange.com/questions/4961/where-can-i-find-shapefiles-for-the-highways-of-puerto-rico

wget http://dds.cr.usgs.gov/pub/data/nationalatlas/roadl_usa.shp_nt00906.tar.gz
tar -xzvf roadl_usa.shp_nt00906.tar.gz

# chop out the roads in Puerto Rico bounding box 
ogr2ogr -f "ESRI Shapefile" pr-roads.shp roadl_usa.shp -clipsrc -67.5  17.8 -65.1  18.6
zip pr-roads.zip pr-roads*
