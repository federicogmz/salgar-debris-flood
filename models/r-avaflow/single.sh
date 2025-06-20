r.in.gdal input=dem.tif output=dem

g.region -s raster=dem zoom=dem
g.region -p

r.avaflow prefix=m phases=m elevation=dem controls=0,1,0,1,1,0 friction=30,10,0,0,0,0,0.035 basal=-7,0.01,0,0,0.01 hydrograph=hidrograph.csv hydrocoords=782825.72062391,1151533.43007414,20,-9999,790493.58109887,1151664.21508007,20,-9999 time=200,6000