# pr-roads

## Inspiration

Google maps doesn't work in PR

## How it works

Download accurate shapefiles.  Now available on [**data.pr.gov**](http://data.pr.gov)

## Challenges I ran into

http://opendata.stackexchange.com/questions/4961/where-can-i-find-shapefiles-for-the-highways-of-puerto-rico

## Accomplishments that I'm proud of

6 hours, 1 line of code

    ogr2ogr -f "ESRI Shapefile" pr-roads.shp roadl_usa.shp -clipsrc -67.5  17.8 -65.1  18.6

## What I learned

Often the answer is right under your nose!

## What's next for Major Roads of Puerto Rico

We can get all streets in Puerto Rico.  Improved route-finding for the Island.
