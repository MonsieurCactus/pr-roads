# download from internet
# see for more info
# http://opendata.stackexchange.com/questions/4961/where-can-i-find-shapefiles-for-the-highways-of-puerto-rico

wget http://dds.cr.usgs.gov/pub/data/nationalatlas/roadl_usa.shp_nt00906.tar.gz
tar -xzvf roadl_usa.shp_nt00906.tar.gz

# chop out the roads in Puerto Rico bounding box 
ogr2ogr -f "ESRI Shapefile" pr-roads.shp roadl_usa.shp -clipsrc -67.5  17.8 -65.1  18.6
zip pr-roads.zip pr-roads*

# Primary and Secondary roads come ready to submit to Socrata 
# http://catalog.data.gov/dataset/tiger-line-shapefile-2013-series-information-file-for-the-primary-and-secondary-roads-state-bas
wget http://www2.census.gov/geo/tiger/TIGER2013/PRISECROADS/tl_2013_72_prisecroads.zip

# download all roads in PR
for i in {000..199}; do wget http://www2.census.gov/geo/tiger/TIGER2013/ROADS/tl_2013_27"$i"_roads.zip; done
unzip "*.zip"
zip all-pr-roads.zip tl_2013*
