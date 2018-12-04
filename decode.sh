#!/bin/bash
if [ ! -f netcdfAll-4.6.11.jar ]; then
  wget http://artifacts.unidata.ucar.edu/content/repositories/unidata-releases/edu/ucar/netcdfAll/4.6.11/netcdfAll-4.6.11.jar
fi
java -Xmx512m -jar netcdfAll-4.6.11.jar;. GempakToCF.java ${1} file.nc
