#####################
# 0 - WD & PACKAGES #
#####################

setwd("C:/Users/benne/Google Drive/Studium/Biologie/Bachelorarbeit/WhiteStork/Bachelor-thesis")

library(rgbif) # Biodiversity data 
library(CoordinateCleaner) # Coordinate cleaning for data cleaning
library(dplyr) # Data manipulation
library(tidyr) # Data manipulation
library(raster) # Geographic/Spatial Data Analysis and Modeling
library(dismo) # Library for Distribution-models
library(ecospat) # PCA, Niche Similarity Analysis
library(devtools) # Collection of package development tools
library(ncdf4) # Interface to Unidata netCDF Format Data
library(rgeos) # Interface to Geometry Engine

#####################################################################
# 1.1 - DOWNLOADING GBIF DATA #
#####################################################################
  ###-------------------------------------------
  ### RECORDS - Africa - 2000 to 2019
  ###-------------------------------------------
### 2000
# 01_January
gbif_wstork_africa_2000_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2000", month=1)
gbif_wstork_africa_2000_01 <- gbif_wstork_africa_2000_01$data
# 02_February
gbif_wstork_africa_2000_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2000", month=2)
gbif_wstork_africa_2000_02 <- gbif_wstork_africa_2000_02$data
# 05_May
gbif_wstork_africa_2000_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2000", month=5)
gbif_wstork_africa_2000_05 <- gbif_wstork_africa_2000_05$data
# 06_June
gbif_wstork_africa_2000_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2000", month=6)
gbif_wstork_africa_2000_06 <- gbif_wstork_africa_2000_06$data
# 07_July
gbif_wstork_africa_2000_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2000", month=7)
gbif_wstork_africa_2000_07 <- gbif_wstork_africa_2000_07$data
# 12_December
gbif_wstork_africa_2000_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2000", month=12)
gbif_wstork_africa_2000_12 <- gbif_wstork_africa_2000_12$data

### all months gathered
gbif_wstork_africa_2000 <- bind_rows(gbif_wstork_africa_2000_01, gbif_wstork_africa_2000_02, gbif_wstork_africa_2000_05, 
                                 gbif_wstork_africa_2000_06, gbif_wstork_africa_2000_07, gbif_wstork_africa_2000_12)
# saving gathered occurrences
save(gbif_wstork_africa_2000, file='./gbif/gbif_wstork_africa_2000.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2000_01, gbif_wstork_africa_2000_02, gbif_wstork_africa_2000_05, 
   gbif_wstork_africa_2000_06, gbif_wstork_africa_2000_07, gbif_wstork_africa_2000_12)

### 2001
# 01_January
gbif_wstork_africa_2001_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2001", month=1)
gbif_wstork_africa_2001_01 <- gbif_wstork_africa_2001_01$data
# 02_February
gbif_wstork_africa_2001_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2001", month=2)
gbif_wstork_africa_2001_02 <- gbif_wstork_africa_2001_02$data
# 05_May
gbif_wstork_africa_2001_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2001", month=5)
gbif_wstork_africa_2001_05 <- gbif_wstork_africa_2001_05$data
# 06_June
gbif_wstork_africa_2001_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2001", month=6)
gbif_wstork_africa_2001_06 <- gbif_wstork_africa_2001_06$data
# 07_July
gbif_wstork_africa_2001_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2001", month=7)
gbif_wstork_africa_2001_07 <- gbif_wstork_africa_2001_07$data
# 12_December
gbif_wstork_africa_2001_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2001", month=12)
gbif_wstork_africa_2001_12 <- gbif_wstork_africa_2001_12$data

### all months gathered
gbif_wstork_africa_2001 <- bind_rows(gbif_wstork_africa_2001_01, gbif_wstork_africa_2001_02, gbif_wstork_africa_2001_05, 
                                 gbif_wstork_africa_2001_06, gbif_wstork_africa_2001_07, gbif_wstork_africa_2001_12)
# saving gathered occurrences
save(gbif_wstork_africa_2001, file='./gbif/gbif_wstork_africa_2001.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2001_01, gbif_wstork_africa_2001_02, gbif_wstork_africa_2001_05, 
   gbif_wstork_africa_2001_06, gbif_wstork_africa_2001_07, gbif_wstork_africa_2001_12)

### 2002
# 01_January
gbif_wstork_africa_2002_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2002", month=1)
gbif_wstork_africa_2002_01 <- gbif_wstork_africa_2002_01$data
# 02_February
gbif_wstork_africa_2002_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2002", month=2)
gbif_wstork_africa_2002_02 <- gbif_wstork_africa_2002_02$data
# 05_May
gbif_wstork_africa_2002_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2002", month=5)
gbif_wstork_africa_2002_05 <- gbif_wstork_africa_2002_05$data
# 06_June
gbif_wstork_africa_2002_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2002", month=6)
gbif_wstork_africa_2002_06 <- gbif_wstork_africa_2002_06$data
# 07_July
gbif_wstork_africa_2002_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2002", month=7)
gbif_wstork_africa_2002_07 <- gbif_wstork_africa_2002_07$data
# 12_December
gbif_wstork_africa_2002_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2002", month=12)
gbif_wstork_africa_2002_12 <- gbif_wstork_africa_2002_12$data

### all months gathered
gbif_wstork_africa_2002 <- bind_rows(gbif_wstork_africa_2002_01, gbif_wstork_africa_2002_02, gbif_wstork_africa_2002_05, 
                                 gbif_wstork_africa_2002_06, gbif_wstork_africa_2002_07, gbif_wstork_africa_2002_12)
# saving gathered occurrences
save(gbif_wstork_africa_2002, file='./gbif/gbif_wstork_africa_2002.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2002_01, gbif_wstork_africa_2002_02, gbif_wstork_africa_2002_05, 
   gbif_wstork_africa_2002_06, gbif_wstork_africa_2002_07, gbif_wstork_africa_2002_12)

### 2003
# 01_January
gbif_wstork_africa_2003_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2003", month=1)
gbif_wstork_africa_2003_01 <- gbif_wstork_africa_2003_01$data
# 02_February
gbif_wstork_africa_2003_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2003", month=2)
gbif_wstork_africa_2003_02 <- gbif_wstork_africa_2003_02$data
# 05_May
gbif_wstork_africa_2003_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2003", month=5)
gbif_wstork_africa_2003_05 <- gbif_wstork_africa_2003_05$data
# 06_June
gbif_wstork_africa_2003_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2003", month=6)
gbif_wstork_africa_2003_06 <- gbif_wstork_africa_2003_06$data
# 07_July
gbif_wstork_africa_2003_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2003", month=7)
gbif_wstork_africa_2003_07 <- gbif_wstork_africa_2003_07$data
# 12_December
gbif_wstork_africa_2003_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2003", month=12)
gbif_wstork_africa_2003_12 <- gbif_wstork_africa_2003_12$data

### all months gathered
gbif_wstork_africa_2003 <- bind_rows(gbif_wstork_africa_2003_01, gbif_wstork_africa_2003_02, gbif_wstork_africa_2003_05, 
                                 gbif_wstork_africa_2003_06, gbif_wstork_africa_2003_07, gbif_wstork_africa_2003_12)
# saving gathered occurrences
save(gbif_wstork_africa_2003, file='./gbif/gbif_wstork_africa_2003.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2003_01, gbif_wstork_africa_2003_02, gbif_wstork_africa_2003_05, 
   gbif_wstork_africa_2003_06, gbif_wstork_africa_2003_07, gbif_wstork_africa_2003_12)

### 2004
# 01_January
gbif_wstork_africa_2004_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2004", month=1)
gbif_wstork_africa_2004_01 <- gbif_wstork_africa_2004_01$data
# 02_February
gbif_wstork_africa_2004_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2004", month=2)
gbif_wstork_africa_2004_02 <- gbif_wstork_africa_2004_02$data
# 05_May
gbif_wstork_africa_2004_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2004", month=5)
gbif_wstork_africa_2004_05 <- gbif_wstork_africa_2004_05$data
# 06_June
gbif_wstork_africa_2004_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2004", month=6)
gbif_wstork_africa_2004_06 <- gbif_wstork_africa_2004_06$data
# 07_July
gbif_wstork_africa_2004_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2004", month=7)
gbif_wstork_africa_2004_07 <- gbif_wstork_africa_2004_07$data
# 12_December
gbif_wstork_africa_2004_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2004", month=12)
gbif_wstork_africa_2004_12 <- gbif_wstork_africa_2004_12$data

### all months gathered
gbif_wstork_africa_2004 <- bind_rows(gbif_wstork_africa_2004_01, gbif_wstork_africa_2004_02, gbif_wstork_africa_2004_05, 
                                 gbif_wstork_africa_2004_06, gbif_wstork_africa_2004_07, gbif_wstork_africa_2004_12)
# saving gathered occurrences
save(gbif_wstork_africa_2004, file='./gbif/gbif_wstork_africa_2004.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2004_01, gbif_wstork_africa_2004_02, gbif_wstork_africa_2004_05, 
   gbif_wstork_africa_2004_06, gbif_wstork_africa_2004_07, gbif_wstork_africa_2004_12)

### 2005
# 01_January
gbif_wstork_africa_2005_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2005", month=1)
gbif_wstork_africa_2005_01 <- gbif_wstork_africa_2005_01$data
# 02_February
gbif_wstork_africa_2005_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2005", month=2)
gbif_wstork_africa_2005_02 <- gbif_wstork_africa_2005_02$data
# 05_May
gbif_wstork_africa_2005_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2005", month=5)
gbif_wstork_africa_2005_05 <- gbif_wstork_africa_2005_05$data
# 06_June
gbif_wstork_africa_2005_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2005", month=6)
gbif_wstork_africa_2005_06 <- gbif_wstork_africa_2005_06$data
# 07_July
gbif_wstork_africa_2005_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2005", month=7)
gbif_wstork_africa_2005_07 <- gbif_wstork_africa_2005_07$data
# 12_December
gbif_wstork_africa_2005_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2005", month=12)
gbif_wstork_africa_2005_12 <- gbif_wstork_africa_2005_12$data

### all months gathered
gbif_wstork_africa_2005 <- bind_rows(gbif_wstork_africa_2005_01, gbif_wstork_africa_2005_02, gbif_wstork_africa_2005_05, 
                                 gbif_wstork_africa_2005_06, gbif_wstork_africa_2005_07, gbif_wstork_africa_2005_12)
# saving gathered occurrences
save(gbif_wstork_africa_2005, file='./gbif/gbif_wstork_africa_2005.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2005_01, gbif_wstork_africa_2005_02, gbif_wstork_africa_2005_05, 
   gbif_wstork_africa_2005_06, gbif_wstork_africa_2005_07, gbif_wstork_africa_2005_12)

### 2006
# 01_January
gbif_wstork_africa_2006_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2006", month=1)
gbif_wstork_africa_2006_01 <- gbif_wstork_africa_2006_01$data
# 02_February
gbif_wstork_africa_2006_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2006", month=2)
gbif_wstork_africa_2006_02 <- gbif_wstork_africa_2006_02$data
# 05_May
gbif_wstork_africa_2006_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2006", month=5)
gbif_wstork_africa_2006_05 <- gbif_wstork_africa_2006_05$data
# 06_June
gbif_wstork_africa_2006_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2006", month=6)
gbif_wstork_africa_2006_06 <- gbif_wstork_africa_2006_06$data
# 07_July
gbif_wstork_africa_2006_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2006", month=7)
gbif_wstork_africa_2006_07 <- gbif_wstork_africa_2006_07$data
# 12_December
gbif_wstork_africa_2006_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2006", month=12)
gbif_wstork_africa_2006_12 <- gbif_wstork_africa_2006_12$data

### all months gathered
gbif_wstork_africa_2006 <- bind_rows(gbif_wstork_africa_2006_01, gbif_wstork_africa_2006_02, gbif_wstork_africa_2006_05, 
                                 gbif_wstork_africa_2006_06, gbif_wstork_africa_2006_07, gbif_wstork_africa_2006_12)
# saving gathered occurrences
save(gbif_wstork_africa_2006, file='./gbif/gbif_wstork_africa_2006.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2006_01, gbif_wstork_africa_2006_02, gbif_wstork_africa_2006_05, 
   gbif_wstork_africa_2006_06, gbif_wstork_africa_2006_07, gbif_wstork_africa_2006_12)

### 2007
# 01_January
gbif_wstork_africa_2007_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2007", month=1)
gbif_wstork_africa_2007_01 <- gbif_wstork_africa_2007_01$data
# 02_February
gbif_wstork_africa_2007_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2007", month=2)
gbif_wstork_africa_2007_02 <- gbif_wstork_africa_2007_02$data
# 05_May
gbif_wstork_africa_2007_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2007", month=5)
gbif_wstork_africa_2007_05 <- gbif_wstork_africa_2007_05$data
# 06_June
gbif_wstork_africa_2007_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2007", month=6)
gbif_wstork_africa_2007_06 <- gbif_wstork_africa_2007_06$data
# 07_July
gbif_wstork_africa_2007_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2007", month=7)
gbif_wstork_africa_2007_07 <- gbif_wstork_africa_2007_07$data
# 12_December
gbif_wstork_africa_2007_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2007", month=12)
gbif_wstork_africa_2007_12 <- gbif_wstork_africa_2007_12$data

### all months gathered
gbif_wstork_africa_2007 <- bind_rows(gbif_wstork_africa_2007_01, gbif_wstork_africa_2007_02, gbif_wstork_africa_2007_05, 
                                 gbif_wstork_africa_2007_06, gbif_wstork_africa_2007_07, gbif_wstork_africa_2007_12)
# saving gathered occurrences
save(gbif_wstork_africa_2007, file='./gbif/gbif_wstork_africa_2007.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2007_01, gbif_wstork_africa_2007_02, gbif_wstork_africa_2007_05, 
   gbif_wstork_africa_2007_06, gbif_wstork_africa_2007_07, gbif_wstork_africa_2007_12)


### 2008
# 01_January
gbif_wstork_africa_2008_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2008", month=1)
gbif_wstork_africa_2008_01 <- gbif_wstork_africa_2008_01$data
# 02_February
gbif_wstork_africa_2008_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2008", month=2)
gbif_wstork_africa_2008_02 <- gbif_wstork_africa_2008_02$data
# 05_May
gbif_wstork_africa_2008_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2008", month=5)
gbif_wstork_africa_2008_05 <- gbif_wstork_africa_2008_05$data
# 06_June
gbif_wstork_africa_2008_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2008", month=6)
gbif_wstork_africa_2008_06 <- gbif_wstork_africa_2008_06$data
# 07_July
gbif_wstork_africa_2008_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2008", month=7)
gbif_wstork_africa_2008_07 <- gbif_wstork_africa_2008_07$data
# 12_December
gbif_wstork_africa_2008_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2008", month=12)
gbif_wstork_africa_2008_12 <- gbif_wstork_africa_2008_12$data

### all months gathered
gbif_wstork_africa_2008 <- bind_rows(gbif_wstork_africa_2008_01, gbif_wstork_africa_2008_02, gbif_wstork_africa_2008_05, 
                                 gbif_wstork_africa_2008_06, gbif_wstork_africa_2008_07, gbif_wstork_africa_2008_12)
# saving gathered occurrences
save(gbif_wstork_africa_2008, file='./gbif/gbif_wstork_africa_2008.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2008_01, gbif_wstork_africa_2008_02, gbif_wstork_africa_2008_05, 
   gbif_wstork_africa_2008_06, gbif_wstork_africa_2008_07, gbif_wstork_africa_2008_12)

### 2009
# 01_January
gbif_wstork_africa_2009_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2009", month=1)
gbif_wstork_africa_2009_01 <- gbif_wstork_africa_2009_01$data
# 02_February
gbif_wstork_africa_2009_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2009", month=2)
gbif_wstork_africa_2009_02 <- gbif_wstork_africa_2009_02$data
# 05_May
gbif_wstork_africa_2009_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2009", month=5)
gbif_wstork_africa_2009_05 <- gbif_wstork_africa_2009_05$data
# 06_June
gbif_wstork_africa_2009_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2009", month=6)
gbif_wstork_africa_2009_06 <- gbif_wstork_africa_2009_06$data
# 07_July
gbif_wstork_africa_2009_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2009", month=7)
gbif_wstork_africa_2009_07 <- gbif_wstork_africa_2009_07$data
# 12_December
gbif_wstork_africa_2009_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2009", month=12)
gbif_wstork_africa_2009_12 <- gbif_wstork_africa_2009_12$data

### all months gathered
gbif_wstork_africa_2009 <- bind_rows(gbif_wstork_africa_2009_01, gbif_wstork_africa_2009_02, gbif_wstork_africa_2009_05, 
                                 gbif_wstork_africa_2009_06, gbif_wstork_africa_2009_07, gbif_wstork_africa_2009_12)
# saving gathered occurrences
save(gbif_wstork_africa_2009, file='./gbif/gbif_wstork_africa_2009.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2009_01, gbif_wstork_africa_2009_02, gbif_wstork_africa_2009_05, 
   gbif_wstork_africa_2009_06, gbif_wstork_africa_2009_07, gbif_wstork_africa_2009_12)

### 2010
# 01_January
gbif_wstork_africa_2010_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2010", month=1)
gbif_wstork_africa_2010_01 <- gbif_wstork_africa_2010_01$data
# 02_February
gbif_wstork_africa_2010_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2010", month=2)
gbif_wstork_africa_2010_02 <- gbif_wstork_africa_2010_02$data
# 05_May
gbif_wstork_africa_2010_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2010", month=5)
gbif_wstork_africa_2010_05 <- gbif_wstork_africa_2010_05$data
# 06_June
gbif_wstork_africa_2010_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2010", month=6)
gbif_wstork_africa_2010_06 <- gbif_wstork_africa_2010_06$data
# 07_July
gbif_wstork_africa_2010_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2010", month=7)
gbif_wstork_africa_2010_07 <- gbif_wstork_africa_2010_07$data
# 12_December
gbif_wstork_africa_2010_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2010", month=12)
gbif_wstork_africa_2010_12 <- gbif_wstork_africa_2010_12$data

### all months gathered
gbif_wstork_africa_2010 <- bind_rows(gbif_wstork_africa_2010_01, gbif_wstork_africa_2010_02, gbif_wstork_africa_2010_05, 
                                 gbif_wstork_africa_2010_06, gbif_wstork_africa_2010_07, gbif_wstork_africa_2010_12)
# saving gathered occurrences
save(gbif_wstork_africa_2010, file='./gbif/gbif_wstork_africa_2010.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2010_01, gbif_wstork_africa_2010_02, gbif_wstork_africa_2010_05, 
   gbif_wstork_africa_2010_06, gbif_wstork_africa_2010_07, gbif_wstork_africa_2010_12)

### 2011
# 01_January
gbif_wstork_africa_2011_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2011", month=1)
gbif_wstork_africa_2011_01 <- gbif_wstork_africa_2011_01$data
# 02_February
gbif_wstork_africa_2011_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2011", month=2)
gbif_wstork_africa_2011_02 <- gbif_wstork_africa_2011_02$data
# 05_May
gbif_wstork_africa_2011_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2011", month=5)
gbif_wstork_africa_2011_05 <- gbif_wstork_africa_2011_05$data
# 06_June
gbif_wstork_africa_2011_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2011", month=6)
gbif_wstork_africa_2011_06 <- gbif_wstork_africa_2011_06$data
# 07_July
gbif_wstork_africa_2011_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2011", month=7)
gbif_wstork_africa_2011_07 <- gbif_wstork_africa_2011_07$data
# 12_December
gbif_wstork_africa_2011_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2011", month=12)
gbif_wstork_africa_2011_12 <- gbif_wstork_africa_2011_12$data

### all months gathered
gbif_wstork_africa_2011 <- bind_rows(gbif_wstork_africa_2011_01, gbif_wstork_africa_2011_02, gbif_wstork_africa_2011_05, 
                                 gbif_wstork_africa_2011_06, gbif_wstork_africa_2011_07, gbif_wstork_africa_2011_12)
# saving gathered occurrences
save(gbif_wstork_africa_2011, file='./gbif/gbif_wstork_africa_2011.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2011_01, gbif_wstork_africa_2011_02, gbif_wstork_africa_2011_05, 
   gbif_wstork_africa_2011_06, gbif_wstork_africa_2011_07, gbif_wstork_africa_2011_12)

### 2012
# 01_January
gbif_wstork_africa_2012_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2012", month=1)
gbif_wstork_africa_2012_01 <- gbif_wstork_africa_2012_01$data
# 02_February
gbif_wstork_africa_2012_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2012", month=2)
gbif_wstork_africa_2012_02 <- gbif_wstork_africa_2012_02$data
# 05_May
gbif_wstork_africa_2012_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2012", month=5)
gbif_wstork_africa_2012_05 <- gbif_wstork_africa_2012_05$data
# 06_June
gbif_wstork_africa_2012_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2012", month=6)
gbif_wstork_africa_2012_06 <- gbif_wstork_africa_2012_06$data
# 07_July
gbif_wstork_africa_2012_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2012", month=7)
gbif_wstork_africa_2012_07 <- gbif_wstork_africa_2012_07$data
# 12_December
gbif_wstork_africa_2012_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2012", month=12)
gbif_wstork_africa_2012_12 <- gbif_wstork_africa_2012_12$data

### all months gathered
gbif_wstork_africa_2012 <- bind_rows(gbif_wstork_africa_2012_01, gbif_wstork_africa_2012_02, gbif_wstork_africa_2012_05, 
                                 gbif_wstork_africa_2012_06, gbif_wstork_africa_2012_07, gbif_wstork_africa_2012_12)
# saving gathered occurrences
save(gbif_wstork_africa_2012, file='./gbif/gbif_wstork_africa_2012.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2012_01, gbif_wstork_africa_2012_02, gbif_wstork_africa_2012_05, 
   gbif_wstork_africa_2012_06, gbif_wstork_africa_2012_07, gbif_wstork_africa_2012_12)

### 2013
# 01_January
gbif_wstork_africa_2013_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2013", month=1)
gbif_wstork_africa_2013_01 <- gbif_wstork_africa_2013_01$data
# 02_February
gbif_wstork_africa_2013_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2013", month=2)
gbif_wstork_africa_2013_02 <- gbif_wstork_africa_2013_02$data
# 05_May
gbif_wstork_africa_2013_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2013", month=5)
gbif_wstork_africa_2013_05 <- gbif_wstork_africa_2013_05$data
# 06_June
gbif_wstork_africa_2013_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2013", month=6)
gbif_wstork_africa_2013_06 <- gbif_wstork_africa_2013_06$data
# 07_July
gbif_wstork_africa_2013_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2013", month=7)
gbif_wstork_africa_2013_07 <- gbif_wstork_africa_2013_07$data
# 12_December
gbif_wstork_africa_2013_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2013", month=12)
gbif_wstork_africa_2013_12 <- gbif_wstork_africa_2013_12$data

### all months gathered
gbif_wstork_africa_2013 <- bind_rows(gbif_wstork_africa_2013_01, gbif_wstork_africa_2013_02, gbif_wstork_africa_2013_05, 
                                 gbif_wstork_africa_2013_06, gbif_wstork_africa_2013_07, gbif_wstork_africa_2013_12)
# saving gathered occurrences
save(gbif_wstork_africa_2013, file='./gbif/gbif_wstork_africa_2013.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2013_01, gbif_wstork_africa_2013_02, gbif_wstork_africa_2013_05, 
   gbif_wstork_africa_2013_06, gbif_wstork_africa_2013_07, gbif_wstork_africa_2013_12)

### 2014
# 01_January
gbif_wstork_africa_2014_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2014", month=1)
gbif_wstork_africa_2014_01 <- gbif_wstork_africa_2014_01$data
# 02_February
gbif_wstork_africa_2014_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2014", month=2)
gbif_wstork_africa_2014_02 <- gbif_wstork_africa_2014_02$data
# 05_May
gbif_wstork_africa_2014_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2014", month=5)
gbif_wstork_africa_2014_05 <- gbif_wstork_africa_2014_05$data
# 06_June
gbif_wstork_africa_2014_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2014", month=6)
gbif_wstork_africa_2014_06 <- gbif_wstork_africa_2014_06$data
# 07_July
gbif_wstork_africa_2014_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2014", month=7)
gbif_wstork_africa_2014_07 <- gbif_wstork_africa_2014_07$data
# 12_December
gbif_wstork_africa_2014_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2014", month=12)
gbif_wstork_africa_2014_12 <- gbif_wstork_africa_2014_12$data

### all months gathered
gbif_wstork_africa_2014 <- bind_rows(gbif_wstork_africa_2014_01, gbif_wstork_africa_2014_02, gbif_wstork_africa_2014_05, 
                                 gbif_wstork_africa_2014_06, gbif_wstork_africa_2014_07, gbif_wstork_africa_2014_12)
# saving gathered occurrences
save(gbif_wstork_africa_2014, file='./gbif/gbif_wstork_africa_2014.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2014_01, gbif_wstork_africa_2014_02, gbif_wstork_africa_2014_05, 
   gbif_wstork_africa_2014_06, gbif_wstork_africa_2014_07, gbif_wstork_africa_2014_12)

### 2015
# 01_January
gbif_wstork_africa_2015_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2015", month=1)
gbif_wstork_africa_2015_01 <- gbif_wstork_africa_2015_01$data
# 02_February
gbif_wstork_africa_2015_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2015", month=2)
gbif_wstork_africa_2015_02 <- gbif_wstork_africa_2015_02$data
# 05_May
gbif_wstork_africa_2015_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2015", month=5)
gbif_wstork_africa_2015_05 <- gbif_wstork_africa_2015_05$data
# 06_June
gbif_wstork_africa_2015_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2015", month=6)
gbif_wstork_africa_2015_06 <- gbif_wstork_africa_2015_06$data
# 07_July
gbif_wstork_africa_2015_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2015", month=7)
gbif_wstork_africa_2015_07 <- gbif_wstork_africa_2015_07$data
# 12_December
gbif_wstork_africa_2015_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2015", month=12)
gbif_wstork_africa_2015_12 <- gbif_wstork_africa_2015_12$data

### all months gathered
gbif_wstork_africa_2015 <- bind_rows(gbif_wstork_africa_2015_01, gbif_wstork_africa_2015_02, gbif_wstork_africa_2015_05, 
                                 gbif_wstork_africa_2015_06, gbif_wstork_africa_2015_07, gbif_wstork_africa_2015_12)
# saving gathered occurrences
save(gbif_wstork_africa_2015, file='./gbif/gbif_wstork_africa_2015.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2015_01, gbif_wstork_africa_2015_02, gbif_wstork_africa_2015_05, 
   gbif_wstork_africa_2015_06, gbif_wstork_africa_2015_07, gbif_wstork_africa_2015_12)

### 2016
# 01_January
gbif_wstork_africa_2016_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2016", month=1)
gbif_wstork_africa_2016_01 <- gbif_wstork_africa_2016_01$data
# 02_February
gbif_wstork_africa_2016_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2016", month=2)
gbif_wstork_africa_2016_02 <- gbif_wstork_africa_2016_02$data
# 05_May
gbif_wstork_africa_2016_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2016", month=5)
gbif_wstork_africa_2016_05 <- gbif_wstork_africa_2016_05$data
# 06_June
gbif_wstork_africa_2016_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2016", month=6)
gbif_wstork_africa_2016_06 <- gbif_wstork_africa_2016_06$data
# 07_July
gbif_wstork_africa_2016_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2016", month=7)
gbif_wstork_africa_2016_07 <- gbif_wstork_africa_2016_07$data
# 12_December
gbif_wstork_africa_2016_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2016", month=12)
gbif_wstork_africa_2016_12 <- gbif_wstork_africa_2016_12$data

### all months gathered
gbif_wstork_africa_2016 <- bind_rows(gbif_wstork_africa_2016_01, gbif_wstork_africa_2016_02, gbif_wstork_africa_2016_05, 
                                 gbif_wstork_africa_2016_06, gbif_wstork_africa_2016_07, gbif_wstork_africa_2016_12)
# saving gathered occurrences
save(gbif_wstork_africa_2016, file='./gbif/gbif_wstork_africa_2016.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2016_01, gbif_wstork_africa_2016_02, gbif_wstork_africa_2016_05, 
   gbif_wstork_africa_2016_06, gbif_wstork_africa_2016_07, gbif_wstork_africa_2016_12)

### 2017
# 01_January
gbif_wstork_africa_2017_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2017", month=1)
gbif_wstork_africa_2017_01 <- gbif_wstork_africa_2017_01$data
# 02_February
gbif_wstork_africa_2017_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2017", month=2)
gbif_wstork_africa_2017_02 <- gbif_wstork_africa_2017_02$data
# 05_May
gbif_wstork_africa_2017_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2017", month=5)
gbif_wstork_africa_2017_05 <- gbif_wstork_africa_2017_05$data
# 06_June
gbif_wstork_africa_2017_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2017", month=6)
gbif_wstork_africa_2017_06 <- gbif_wstork_africa_2017_06$data
# 07_July
gbif_wstork_africa_2017_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2017", month=7)
gbif_wstork_africa_2017_07 <- gbif_wstork_africa_2017_07$data
# 12_December
gbif_wstork_africa_2017_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2017", month=12)
gbif_wstork_africa_2017_12 <- gbif_wstork_africa_2017_12$data

### all months gathered
gbif_wstork_africa_2017 <- bind_rows(gbif_wstork_africa_2017_01, gbif_wstork_africa_2017_02, gbif_wstork_africa_2017_05, 
                                 gbif_wstork_africa_2017_06, gbif_wstork_africa_2017_07, gbif_wstork_africa_2017_12)
# saving gathered occurrences
save(gbif_wstork_africa_2017, file='./gbif/gbif_wstork_africa_2017.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2017_01, gbif_wstork_africa_2017_02, gbif_wstork_africa_2017_05, 
   gbif_wstork_africa_2017_06, gbif_wstork_africa_2017_07, gbif_wstork_africa_2017_12)

### 2018
# 01_January
gbif_wstork_africa_2018_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2018", month=1)
gbif_wstork_africa_2018_01 <- gbif_wstork_africa_2018_01$data
# 02_February
gbif_wstork_africa_2018_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2018", month=2)
gbif_wstork_africa_2018_02 <- gbif_wstork_africa_2018_02$data
# 05_May
gbif_wstork_africa_2018_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2018", month=5)
gbif_wstork_africa_2018_05 <- gbif_wstork_africa_2018_05$data
# 06_June
gbif_wstork_africa_2018_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2018", month=6)
gbif_wstork_africa_2018_06 <- gbif_wstork_africa_2018_06$data
# 07_July
gbif_wstork_africa_2018_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2018", month=7)
gbif_wstork_africa_2018_07 <- gbif_wstork_africa_2018_07$data
# 12_December
gbif_wstork_africa_2018_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2018", month=12)
gbif_wstork_africa_2018_12 <- gbif_wstork_africa_2018_12$data

### all months gathered
gbif_wstork_africa_2018 <- bind_rows(gbif_wstork_africa_2018_01, gbif_wstork_africa_2018_02, gbif_wstork_africa_2018_05, 
                                 gbif_wstork_africa_2018_06, gbif_wstork_africa_2018_07, gbif_wstork_africa_2018_12)
# saving gathered occurrences
save(gbif_wstork_africa_2018, file='./gbif/gbif_wstork_africa_2018.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2018_01, gbif_wstork_africa_2018_02, gbif_wstork_africa_2018_05, 
   gbif_wstork_africa_2018_06, gbif_wstork_africa_2018_07, gbif_wstork_africa_2018_12)

### 2019
# 01_January
gbif_wstork_africa_2019_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,  
                                     year="2019", month=1)
gbif_wstork_africa_2019_01 <- gbif_wstork_africa_2019_01$data
# 02_February
gbif_wstork_africa_2019_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2019", month=2)
gbif_wstork_africa_2019_02 <- gbif_wstork_africa_2019_02$data
# 05_May
gbif_wstork_africa_2019_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2019", month=5)
gbif_wstork_africa_2019_05 <- gbif_wstork_africa_2019_05$data
# 06_June
gbif_wstork_africa_2019_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2019", month=6)
gbif_wstork_africa_2019_06 <- gbif_wstork_africa_2019_06$data
# 07_July
gbif_wstork_africa_2019_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2019", month=7)
gbif_wstork_africa_2019_07 <- gbif_wstork_africa_2019_07$data
# 12_December
gbif_wstork_africa_2019_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 100,
                                     decimalLatitude = "-40,35", decimalLongitude = "-20,52", hasGeospatialIssue=FALSE,
                                     year="2019", month=12)
gbif_wstork_africa_2019_12 <- gbif_wstork_africa_2019_12$data

### all months gathered
gbif_wstork_africa_2019 <- bind_rows(gbif_wstork_africa_2019_01, gbif_wstork_africa_2019_02, gbif_wstork_africa_2019_05, 
                                 gbif_wstork_africa_2019_06, gbif_wstork_africa_2019_07, gbif_wstork_africa_2019_12)
# saving gathered occurrences
save(gbif_wstork_africa_2019, file='./gbif/gbif_wstork_africa_2019.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_africa_2019_01, gbif_wstork_africa_2019_02, gbif_wstork_africa_2019_05, 
   gbif_wstork_africa_2019_06, gbif_wstork_africa_2019_07, gbif_wstork_africa_2019_12)


  ###-------------------------------------------
  ### RECORDS - Europe - 2000 to 2019
  ###-------------------------------------------
### 2000
# 01_January
  gbif_wstork_eu_2000_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                            decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                            year="2000", month=1)
  gbif_wstork_eu_2000_01 <- gbif_wstork_eu_2000_01$data
# 02_February
  gbif_wstork_eu_2000_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                            decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                            year="2000", month=2)
  gbif_wstork_eu_2000_02 <- gbif_wstork_eu_2000_02$data
# 05_May
  gbif_wstork_eu_2000_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                            decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                            year="2000", month=5)
  gbif_wstork_eu_2000_05 <- gbif_wstork_eu_2000_05$data
# 06_June
  gbif_wstork_eu_2000_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                            decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                            year="2000", month=6)
  gbif_wstork_eu_2000_06 <- gbif_wstork_eu_2000_06$data
# 07_July
  gbif_wstork_eu_2000_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                            decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                            year="2000", month=7)
  gbif_wstork_eu_2000_07 <- gbif_wstork_eu_2000_07$data
# 12_December
  gbif_wstork_eu_2000_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                            decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                            year="2000", month=12)
  gbif_wstork_eu_2000_12 <- gbif_wstork_eu_2000_12$data

### all months gathered
gbif_wstork_eu_2000 <- bind_rows(gbif_wstork_eu_2000_01, gbif_wstork_eu_2000_02, gbif_wstork_eu_2000_05, 
                                 gbif_wstork_eu_2000_06, gbif_wstork_eu_2000_07, gbif_wstork_eu_2000_12)
# saving gathered occurrences
save(gbif_wstork_eu_2000, file='./gbif/gbif_wstork_eu_2000.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2000_01, gbif_wstork_eu_2000_02, gbif_wstork_eu_2000_05, 
   gbif_wstork_eu_2000_06, gbif_wstork_eu_2000_07, gbif_wstork_eu_2000_12)

### 2001
# 01_January
gbif_wstork_eu_2001_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2001", month=1)
gbif_wstork_eu_2001_01 <- gbif_wstork_eu_2001_01$data
# 02_February
gbif_wstork_eu_2001_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2001", month=2)
gbif_wstork_eu_2001_02 <- gbif_wstork_eu_2001_02$data
# 05_May
gbif_wstork_eu_2001_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2001", month=5)
gbif_wstork_eu_2001_05 <- gbif_wstork_eu_2001_05$data
# 06_June
gbif_wstork_eu_2001_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2001", month=6)
gbif_wstork_eu_2001_06 <- gbif_wstork_eu_2001_06$data
# 07_July
gbif_wstork_eu_2001_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2001", month=7)
gbif_wstork_eu_2001_07 <- gbif_wstork_eu_2001_07$data
# 12_December
gbif_wstork_eu_2001_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2001", month=12)
gbif_wstork_eu_2001_12 <- gbif_wstork_eu_2001_12$data

### all months gathered
gbif_wstork_eu_2001 <- bind_rows(gbif_wstork_eu_2001_01, gbif_wstork_eu_2001_02, gbif_wstork_eu_2001_05, 
                                 gbif_wstork_eu_2001_06, gbif_wstork_eu_2001_07, gbif_wstork_eu_2001_12)
# saving gathered occurrences
save(gbif_wstork_eu_2001, file='./gbif/gbif_wstork_eu_2001.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2001_01, gbif_wstork_eu_2001_02, gbif_wstork_eu_2001_05, 
   gbif_wstork_eu_2001_06, gbif_wstork_eu_2001_07, gbif_wstork_eu_2001_12)

### 2002
# 01_January
gbif_wstork_eu_2002_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2002", month=1)
gbif_wstork_eu_2002_01 <- gbif_wstork_eu_2002_01$data
# 02_February
gbif_wstork_eu_2002_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2002", month=2)
gbif_wstork_eu_2002_02 <- gbif_wstork_eu_2002_02$data
# 05_May
gbif_wstork_eu_2002_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2002", month=5)
gbif_wstork_eu_2002_05 <- gbif_wstork_eu_2002_05$data
# 06_June
gbif_wstork_eu_2002_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2002", month=6)
gbif_wstork_eu_2002_06 <- gbif_wstork_eu_2002_06$data
# 07_July
gbif_wstork_eu_2002_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2002", month=7)
gbif_wstork_eu_2002_07 <- gbif_wstork_eu_2002_07$data
# 12_December
gbif_wstork_eu_2002_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2002", month=12)
gbif_wstork_eu_2002_12 <- gbif_wstork_eu_2002_12$data

### all months gathered
gbif_wstork_eu_2002 <- bind_rows(gbif_wstork_eu_2002_01, gbif_wstork_eu_2002_02, gbif_wstork_eu_2002_05, 
                                 gbif_wstork_eu_2002_06, gbif_wstork_eu_2002_07, gbif_wstork_eu_2002_12)
# saving gathered occurrences
save(gbif_wstork_eu_2002, file='./gbif/gbif_wstork_eu_2002.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2002_01, gbif_wstork_eu_2002_02, gbif_wstork_eu_2002_05, 
   gbif_wstork_eu_2002_06, gbif_wstork_eu_2002_07, gbif_wstork_eu_2002_12)

### 2003
# 01_January
gbif_wstork_eu_2003_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2003", month=1)
gbif_wstork_eu_2003_01 <- gbif_wstork_eu_2003_01$data
# 02_February
gbif_wstork_eu_2003_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2003", month=2)
gbif_wstork_eu_2003_02 <- gbif_wstork_eu_2003_02$data
# 05_May
gbif_wstork_eu_2003_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2003", month=5)
gbif_wstork_eu_2003_05 <- gbif_wstork_eu_2003_05$data
# 06_June
gbif_wstork_eu_2003_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2003", month=6)
gbif_wstork_eu_2003_06 <- gbif_wstork_eu_2003_06$data
# 07_July
gbif_wstork_eu_2003_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2003", month=7)
gbif_wstork_eu_2003_07 <- gbif_wstork_eu_2003_07$data
# 12_December
gbif_wstork_eu_2003_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2003", month=12)
gbif_wstork_eu_2003_12 <- gbif_wstork_eu_2003_12$data

### all months gathered
gbif_wstork_eu_2003 <- bind_rows(gbif_wstork_eu_2003_01, gbif_wstork_eu_2003_02, gbif_wstork_eu_2003_05, 
                                 gbif_wstork_eu_2003_06, gbif_wstork_eu_2003_07, gbif_wstork_eu_2003_12)
# saving gathered occurrences
save(gbif_wstork_eu_2003, file='./gbif/gbif_wstork_eu_2003.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2003_01, gbif_wstork_eu_2003_02, gbif_wstork_eu_2003_05, 
   gbif_wstork_eu_2003_06, gbif_wstork_eu_2003_07, gbif_wstork_eu_2003_12)

### 2004
# 01_January
gbif_wstork_eu_2004_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2004", month=1)
gbif_wstork_eu_2004_01 <- gbif_wstork_eu_2004_01$data
# 02_February
gbif_wstork_eu_2004_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2004", month=2)
gbif_wstork_eu_2004_02 <- gbif_wstork_eu_2004_02$data
# 05_May
gbif_wstork_eu_2004_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2004", month=5)
gbif_wstork_eu_2004_05 <- gbif_wstork_eu_2004_05$data
# 06_June
gbif_wstork_eu_2004_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2004", month=6)
gbif_wstork_eu_2004_06 <- gbif_wstork_eu_2004_06$data
# 07_July
gbif_wstork_eu_2004_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2004", month=7)
gbif_wstork_eu_2004_07 <- gbif_wstork_eu_2004_07$data
# 12_December
gbif_wstork_eu_2004_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2004", month=12)
gbif_wstork_eu_2004_12 <- gbif_wstork_eu_2004_12$data

### all months gathered
gbif_wstork_eu_2004 <- bind_rows(gbif_wstork_eu_2004_01, gbif_wstork_eu_2004_02, gbif_wstork_eu_2004_05, 
                                 gbif_wstork_eu_2004_06, gbif_wstork_eu_2004_07, gbif_wstork_eu_2004_12)
# saving gathered occurrences
save(gbif_wstork_eu_2004, file='./gbif/gbif_wstork_eu_2004.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2004_01, gbif_wstork_eu_2004_02, gbif_wstork_eu_2004_05, 
   gbif_wstork_eu_2004_06, gbif_wstork_eu_2004_07, gbif_wstork_eu_2004_12)

### 2005
# 01_January
gbif_wstork_eu_2005_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2005", month=1)
gbif_wstork_eu_2005_01 <- gbif_wstork_eu_2005_01$data
# 02_February
gbif_wstork_eu_2005_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2005", month=2)
gbif_wstork_eu_2005_02 <- gbif_wstork_eu_2005_02$data
# 05_May
gbif_wstork_eu_2005_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2005", month=5)
gbif_wstork_eu_2005_05 <- gbif_wstork_eu_2005_05$data
# 06_June
gbif_wstork_eu_2005_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2005", month=6)
gbif_wstork_eu_2005_06 <- gbif_wstork_eu_2005_06$data
# 07_July
gbif_wstork_eu_2005_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2005", month=7)
gbif_wstork_eu_2005_07 <- gbif_wstork_eu_2005_07$data
# 12_December
gbif_wstork_eu_2005_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2005", month=12)
gbif_wstork_eu_2005_12 <- gbif_wstork_eu_2005_12$data

### all months gathered
gbif_wstork_eu_2005 <- bind_rows(gbif_wstork_eu_2005_01, gbif_wstork_eu_2005_02, gbif_wstork_eu_2005_05, 
                                 gbif_wstork_eu_2005_06, gbif_wstork_eu_2005_07, gbif_wstork_eu_2005_12)
# saving gathered occurrences
save(gbif_wstork_eu_2005, file='./gbif/gbif_wstork_eu_2005.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2005_01, gbif_wstork_eu_2005_02, gbif_wstork_eu_2005_05, 
   gbif_wstork_eu_2005_06, gbif_wstork_eu_2005_07, gbif_wstork_eu_2005_12)

### 2006
# 01_January
gbif_wstork_eu_2006_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2006", month=1)
gbif_wstork_eu_2006_01 <- gbif_wstork_eu_2006_01$data
# 02_February
gbif_wstork_eu_2006_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2006", month=2)
gbif_wstork_eu_2006_02 <- gbif_wstork_eu_2006_02$data
# 05_May
gbif_wstork_eu_2006_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2006", month=5)
gbif_wstork_eu_2006_05 <- gbif_wstork_eu_2006_05$data
# 06_June
gbif_wstork_eu_2006_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2006", month=6)
gbif_wstork_eu_2006_06 <- gbif_wstork_eu_2006_06$data
# 07_July
gbif_wstork_eu_2006_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2006", month=7)
gbif_wstork_eu_2006_07 <- gbif_wstork_eu_2006_07$data
# 12_December
gbif_wstork_eu_2006_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2006", month=12)
gbif_wstork_eu_2006_12 <- gbif_wstork_eu_2006_12$data

### all months gathered
gbif_wstork_eu_2006 <- bind_rows(gbif_wstork_eu_2006_01, gbif_wstork_eu_2006_02, gbif_wstork_eu_2006_05, 
                                 gbif_wstork_eu_2006_06, gbif_wstork_eu_2006_07, gbif_wstork_eu_2006_12)
# saving gathered occurrences
save(gbif_wstork_eu_2006, file='./gbif/gbif_wstork_eu_2006.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2006_01, gbif_wstork_eu_2006_02, gbif_wstork_eu_2006_05, 
   gbif_wstork_eu_2006_06, gbif_wstork_eu_2006_07, gbif_wstork_eu_2006_12)

### 2007
# 01_January
gbif_wstork_eu_2007_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2007", month=1)
gbif_wstork_eu_2007_01 <- gbif_wstork_eu_2007_01$data
# 02_February
gbif_wstork_eu_2007_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2007", month=2)
gbif_wstork_eu_2007_02 <- gbif_wstork_eu_2007_02$data
# 05_May
gbif_wstork_eu_2007_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2007", month=5)
gbif_wstork_eu_2007_05 <- gbif_wstork_eu_2007_05$data
# 06_June
gbif_wstork_eu_2007_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2007", month=6)
gbif_wstork_eu_2007_06 <- gbif_wstork_eu_2007_06$data
# 07_July
gbif_wstork_eu_2007_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2007", month=7)
gbif_wstork_eu_2007_07 <- gbif_wstork_eu_2007_07$data
# 12_December
gbif_wstork_eu_2007_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2007", month=12)
gbif_wstork_eu_2007_12 <- gbif_wstork_eu_2007_12$data

### all months gathered
gbif_wstork_eu_2007 <- bind_rows(gbif_wstork_eu_2007_01, gbif_wstork_eu_2007_02, gbif_wstork_eu_2007_05, 
                                 gbif_wstork_eu_2007_06, gbif_wstork_eu_2007_07, gbif_wstork_eu_2007_12)
# saving gathered occurrences
save(gbif_wstork_eu_2007, file='./gbif/gbif_wstork_eu_2007.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2007_01, gbif_wstork_eu_2007_02, gbif_wstork_eu_2007_05, 
   gbif_wstork_eu_2007_06, gbif_wstork_eu_2007_07, gbif_wstork_eu_2007_12)


### 2008
# 01_January
gbif_wstork_eu_2008_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2008", month=1)
gbif_wstork_eu_2008_01 <- gbif_wstork_eu_2008_01$data
# 02_February
gbif_wstork_eu_2008_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2008", month=2)
gbif_wstork_eu_2008_02 <- gbif_wstork_eu_2008_02$data
# 05_May
gbif_wstork_eu_2008_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2008", month=5)
gbif_wstork_eu_2008_05 <- gbif_wstork_eu_2008_05$data
# 06_June
gbif_wstork_eu_2008_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2008", month=6)
gbif_wstork_eu_2008_06 <- gbif_wstork_eu_2008_06$data
# 07_July
gbif_wstork_eu_2008_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2008", month=7)
gbif_wstork_eu_2008_07 <- gbif_wstork_eu_2008_07$data
# 12_December
gbif_wstork_eu_2008_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2008", month=12)
gbif_wstork_eu_2008_12 <- gbif_wstork_eu_2008_12$data

### all months gathered
gbif_wstork_eu_2008 <- bind_rows(gbif_wstork_eu_2008_01, gbif_wstork_eu_2008_02, gbif_wstork_eu_2008_05, 
                                 gbif_wstork_eu_2008_06, gbif_wstork_eu_2008_07, gbif_wstork_eu_2008_12)
# saving gathered occurrences
save(gbif_wstork_eu_2008, file='./gbif/gbif_wstork_eu_2008.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2008_01, gbif_wstork_eu_2008_02, gbif_wstork_eu_2008_05, 
   gbif_wstork_eu_2008_06, gbif_wstork_eu_2008_07, gbif_wstork_eu_2008_12)

### 2009
# 01_January
gbif_wstork_eu_2009_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2009", month=1)
gbif_wstork_eu_2009_01 <- gbif_wstork_eu_2009_01$data
# 02_February
gbif_wstork_eu_2009_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2009", month=2)
gbif_wstork_eu_2009_02 <- gbif_wstork_eu_2009_02$data
# 05_May
gbif_wstork_eu_2009_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2009", month=5)
gbif_wstork_eu_2009_05 <- gbif_wstork_eu_2009_05$data
# 06_June
gbif_wstork_eu_2009_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2009", month=6)
gbif_wstork_eu_2009_06 <- gbif_wstork_eu_2009_06$data
# 07_July
gbif_wstork_eu_2009_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2009", month=7)
gbif_wstork_eu_2009_07 <- gbif_wstork_eu_2009_07$data
# 12_December
gbif_wstork_eu_2009_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2009", month=12)
gbif_wstork_eu_2009_12 <- gbif_wstork_eu_2009_12$data

### all months gathered
gbif_wstork_eu_2009 <- bind_rows(gbif_wstork_eu_2009_01, gbif_wstork_eu_2009_02, gbif_wstork_eu_2009_05, 
                                 gbif_wstork_eu_2009_06, gbif_wstork_eu_2009_07, gbif_wstork_eu_2009_12)
# saving gathered occurrences
save(gbif_wstork_eu_2009, file='./gbif/gbif_wstork_eu_2009.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2009_01, gbif_wstork_eu_2009_02, gbif_wstork_eu_2009_05, 
   gbif_wstork_eu_2009_06, gbif_wstork_eu_2009_07, gbif_wstork_eu_2009_12)

### 2010
# 01_January
gbif_wstork_eu_2010_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2010", month=1)
gbif_wstork_eu_2010_01 <- gbif_wstork_eu_2010_01$data
# 02_February
gbif_wstork_eu_2010_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2010", month=2)
gbif_wstork_eu_2010_02 <- gbif_wstork_eu_2010_02$data
# 05_May
gbif_wstork_eu_2010_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2010", month=5)
gbif_wstork_eu_2010_05 <- gbif_wstork_eu_2010_05$data
# 06_June
gbif_wstork_eu_2010_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2010", month=6)
gbif_wstork_eu_2010_06 <- gbif_wstork_eu_2010_06$data
# 07_July
gbif_wstork_eu_2010_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2010", month=7)
gbif_wstork_eu_2010_07 <- gbif_wstork_eu_2010_07$data
# 12_December
gbif_wstork_eu_2010_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2010", month=12)
gbif_wstork_eu_2010_12 <- gbif_wstork_eu_2010_12$data

### all months gathered
gbif_wstork_eu_2010 <- bind_rows(gbif_wstork_eu_2010_01, gbif_wstork_eu_2010_02, gbif_wstork_eu_2010_05, 
                                 gbif_wstork_eu_2010_06, gbif_wstork_eu_2010_07, gbif_wstork_eu_2010_12)
# saving gathered occurrences
save(gbif_wstork_eu_2010, file='./gbif/gbif_wstork_eu_2010.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2010_01, gbif_wstork_eu_2010_02, gbif_wstork_eu_2010_05, 
   gbif_wstork_eu_2010_06, gbif_wstork_eu_2010_07, gbif_wstork_eu_2010_12)

### 2011
# 01_January
gbif_wstork_eu_2011_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2011", month=1)
gbif_wstork_eu_2011_01 <- gbif_wstork_eu_2011_01$data
# 02_February
gbif_wstork_eu_2011_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2011", month=2)
gbif_wstork_eu_2011_02 <- gbif_wstork_eu_2011_02$data
# 05_May
gbif_wstork_eu_2011_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2011", month=5)
gbif_wstork_eu_2011_05 <- gbif_wstork_eu_2011_05$data
# 06_June
gbif_wstork_eu_2011_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2011", month=6)
gbif_wstork_eu_2011_06 <- gbif_wstork_eu_2011_06$data
# 07_July
gbif_wstork_eu_2011_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2011", month=7)
gbif_wstork_eu_2011_07 <- gbif_wstork_eu_2011_07$data
# 12_December
gbif_wstork_eu_2011_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2011", month=12)
gbif_wstork_eu_2011_12 <- gbif_wstork_eu_2011_12$data

### all months gathered
gbif_wstork_eu_2011 <- bind_rows(gbif_wstork_eu_2011_01, gbif_wstork_eu_2011_02, gbif_wstork_eu_2011_05, 
                                 gbif_wstork_eu_2011_06, gbif_wstork_eu_2011_07, gbif_wstork_eu_2011_12)
# saving gathered occurrences
save(gbif_wstork_eu_2011, file='./gbif/gbif_wstork_eu_2011.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2011_01, gbif_wstork_eu_2011_02, gbif_wstork_eu_2011_05, 
   gbif_wstork_eu_2011_06, gbif_wstork_eu_2011_07, gbif_wstork_eu_2011_12)

### 2012
# 01_January
gbif_wstork_eu_2012_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2012", month=1)
gbif_wstork_eu_2012_01 <- gbif_wstork_eu_2012_01$data
# 02_February
gbif_wstork_eu_2012_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2012", month=2)
gbif_wstork_eu_2012_02 <- gbif_wstork_eu_2012_02$data
# 05_May
gbif_wstork_eu_2012_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2012", month=5)
gbif_wstork_eu_2012_05 <- gbif_wstork_eu_2012_05$data
# 06_June
gbif_wstork_eu_2012_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2012", month=6)
gbif_wstork_eu_2012_06 <- gbif_wstork_eu_2012_06$data
# 07_July
gbif_wstork_eu_2012_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2012", month=7)
gbif_wstork_eu_2012_07 <- gbif_wstork_eu_2012_07$data
# 12_December
gbif_wstork_eu_2012_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2012", month=12)
gbif_wstork_eu_2012_12 <- gbif_wstork_eu_2012_12$data

### all months gathered
gbif_wstork_eu_2012 <- bind_rows(gbif_wstork_eu_2012_01, gbif_wstork_eu_2012_02, gbif_wstork_eu_2012_05, 
                                 gbif_wstork_eu_2012_06, gbif_wstork_eu_2012_07, gbif_wstork_eu_2012_12)
# saving gathered occurrences
save(gbif_wstork_eu_2012, file='./gbif/gbif_wstork_eu_2012.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2012_01, gbif_wstork_eu_2012_02, gbif_wstork_eu_2012_05, 
   gbif_wstork_eu_2012_06, gbif_wstork_eu_2012_07, gbif_wstork_eu_2012_12)

### 2013
# 01_January
gbif_wstork_eu_2013_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2013", month=1)
gbif_wstork_eu_2013_01 <- gbif_wstork_eu_2013_01$data
# 02_February
gbif_wstork_eu_2013_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2013", month=2)
gbif_wstork_eu_2013_02 <- gbif_wstork_eu_2013_02$data
# 05_May
gbif_wstork_eu_2013_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2013", month=5)
gbif_wstork_eu_2013_05 <- gbif_wstork_eu_2013_05$data
# 06_June
gbif_wstork_eu_2013_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2013", month=6)
gbif_wstork_eu_2013_06 <- gbif_wstork_eu_2013_06$data
# 07_July
gbif_wstork_eu_2013_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2013", month=7)
gbif_wstork_eu_2013_07 <- gbif_wstork_eu_2013_07$data
# 12_December
gbif_wstork_eu_2013_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2013", month=12)
gbif_wstork_eu_2013_12 <- gbif_wstork_eu_2013_12$data

### all months gathered
gbif_wstork_eu_2013 <- bind_rows(gbif_wstork_eu_2013_01, gbif_wstork_eu_2013_02, gbif_wstork_eu_2013_05, 
                                 gbif_wstork_eu_2013_06, gbif_wstork_eu_2013_07, gbif_wstork_eu_2013_12)
# saving gathered occurrences
save(gbif_wstork_eu_2013, file='./gbif/gbif_wstork_eu_2013.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2013_01, gbif_wstork_eu_2013_02, gbif_wstork_eu_2013_05, 
   gbif_wstork_eu_2013_06, gbif_wstork_eu_2013_07, gbif_wstork_eu_2013_12)

### 2014
# 01_January
gbif_wstork_eu_2014_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2014", month=1)
gbif_wstork_eu_2014_01 <- gbif_wstork_eu_2014_01$data
# 02_February
gbif_wstork_eu_2014_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2014", month=2)
gbif_wstork_eu_2014_02 <- gbif_wstork_eu_2014_02$data
# 05_May
gbif_wstork_eu_2014_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2014", month=5)
gbif_wstork_eu_2014_05 <- gbif_wstork_eu_2014_05$data
# 06_June
gbif_wstork_eu_2014_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2014", month=6)
gbif_wstork_eu_2014_06 <- gbif_wstork_eu_2014_06$data
# 07_July
gbif_wstork_eu_2014_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2014", month=7)
gbif_wstork_eu_2014_07 <- gbif_wstork_eu_2014_07$data
# 12_December
gbif_wstork_eu_2014_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2014", month=12)
gbif_wstork_eu_2014_12 <- gbif_wstork_eu_2014_12$data

### all months gathered
gbif_wstork_eu_2014 <- bind_rows(gbif_wstork_eu_2014_01, gbif_wstork_eu_2014_02, gbif_wstork_eu_2014_05, 
                                 gbif_wstork_eu_2014_06, gbif_wstork_eu_2014_07, gbif_wstork_eu_2014_12)
# saving gathered occurrences
save(gbif_wstork_eu_2014, file='./gbif/gbif_wstork_eu_2014.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2014_01, gbif_wstork_eu_2014_02, gbif_wstork_eu_2014_05, 
   gbif_wstork_eu_2014_06, gbif_wstork_eu_2014_07, gbif_wstork_eu_2014_12)

### 2015
# 01_January
gbif_wstork_eu_2015_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2015", month=1)
gbif_wstork_eu_2015_01 <- gbif_wstork_eu_2015_01$data
# 02_February
gbif_wstork_eu_2015_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2015", month=2)
gbif_wstork_eu_2015_02 <- gbif_wstork_eu_2015_02$data
# 05_May
gbif_wstork_eu_2015_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2015", month=5)
gbif_wstork_eu_2015_05 <- gbif_wstork_eu_2015_05$data
# 06_June
gbif_wstork_eu_2015_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2015", month=6)
gbif_wstork_eu_2015_06 <- gbif_wstork_eu_2015_06$data
# 07_July
gbif_wstork_eu_2015_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2015", month=7)
gbif_wstork_eu_2015_07 <- gbif_wstork_eu_2015_07$data
# 12_December
gbif_wstork_eu_2015_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2015", month=12)
gbif_wstork_eu_2015_12 <- gbif_wstork_eu_2015_12$data

### all months gathered
gbif_wstork_eu_2015 <- bind_rows(gbif_wstork_eu_2015_01, gbif_wstork_eu_2015_02, gbif_wstork_eu_2015_05, 
                                 gbif_wstork_eu_2015_06, gbif_wstork_eu_2015_07, gbif_wstork_eu_2015_12)
# saving gathered occurrences
save(gbif_wstork_eu_2015, file='./gbif/gbif_wstork_eu_2015.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2015_01, gbif_wstork_eu_2015_02, gbif_wstork_eu_2015_05, 
   gbif_wstork_eu_2015_06, gbif_wstork_eu_2015_07, gbif_wstork_eu_2015_12)

### 2016
# 01_January
gbif_wstork_eu_2016_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2016", month=1)
gbif_wstork_eu_2016_01 <- gbif_wstork_eu_2016_01$data
# 02_February
gbif_wstork_eu_2016_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2016", month=2)
gbif_wstork_eu_2016_02 <- gbif_wstork_eu_2016_02$data
# 05_May
gbif_wstork_eu_2016_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2016", month=5)
gbif_wstork_eu_2016_05 <- gbif_wstork_eu_2016_05$data
# 06_June
gbif_wstork_eu_2016_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2016", month=6)
gbif_wstork_eu_2016_06 <- gbif_wstork_eu_2016_06$data
# 07_July
gbif_wstork_eu_2016_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2016", month=7)
gbif_wstork_eu_2016_07 <- gbif_wstork_eu_2016_07$data
# 12_December
gbif_wstork_eu_2016_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2016", month=12)
gbif_wstork_eu_2016_12 <- gbif_wstork_eu_2016_12$data

### all months gathered
gbif_wstork_eu_2016 <- bind_rows(gbif_wstork_eu_2016_01, gbif_wstork_eu_2016_02, gbif_wstork_eu_2016_05, 
                                 gbif_wstork_eu_2016_06, gbif_wstork_eu_2016_07, gbif_wstork_eu_2016_12)
# saving gathered occurrences
save(gbif_wstork_eu_2016, file='./gbif/gbif_wstork_eu_2016.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2016_01, gbif_wstork_eu_2016_02, gbif_wstork_eu_2016_05, 
   gbif_wstork_eu_2016_06, gbif_wstork_eu_2016_07, gbif_wstork_eu_2016_12)

### 2017
# 01_January
gbif_wstork_eu_2017_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2017", month=1)
gbif_wstork_eu_2017_01 <- gbif_wstork_eu_2017_01$data
# 02_February
gbif_wstork_eu_2017_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2017", month=2)
gbif_wstork_eu_2017_02 <- gbif_wstork_eu_2017_02$data
# 05_May
gbif_wstork_eu_2017_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2017", month=5)
gbif_wstork_eu_2017_05 <- gbif_wstork_eu_2017_05$data
# 06_June
gbif_wstork_eu_2017_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2017", month=6)
gbif_wstork_eu_2017_06 <- gbif_wstork_eu_2017_06$data
# 07_July
gbif_wstork_eu_2017_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2017", month=7)
gbif_wstork_eu_2017_07 <- gbif_wstork_eu_2017_07$data
# 12_December
gbif_wstork_eu_2017_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2017", month=12)
gbif_wstork_eu_2017_12 <- gbif_wstork_eu_2017_12$data

### all months gathered
gbif_wstork_eu_2017 <- bind_rows(gbif_wstork_eu_2017_01, gbif_wstork_eu_2017_02, gbif_wstork_eu_2017_05, 
                                 gbif_wstork_eu_2017_06, gbif_wstork_eu_2017_07, gbif_wstork_eu_2017_12)
# saving gathered occurrences
save(gbif_wstork_eu_2017, file='./gbif/gbif_wstork_eu_2017.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2017_01, gbif_wstork_eu_2017_02, gbif_wstork_eu_2017_05, 
   gbif_wstork_eu_2017_06, gbif_wstork_eu_2017_07, gbif_wstork_eu_2017_12)

### 2018
# 01_January
gbif_wstork_eu_2018_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2018", month=1)
gbif_wstork_eu_2018_01 <- gbif_wstork_eu_2018_01$data
# 02_February
gbif_wstork_eu_2018_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2018", month=2)
gbif_wstork_eu_2018_02 <- gbif_wstork_eu_2018_02$data
# 05_May
gbif_wstork_eu_2018_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2018", month=5)
gbif_wstork_eu_2018_05 <- gbif_wstork_eu_2018_05$data
# 06_June
gbif_wstork_eu_2018_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2018", month=6)
gbif_wstork_eu_2018_06 <- gbif_wstork_eu_2018_06$data
# 07_July
gbif_wstork_eu_2018_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2018", month=7)
gbif_wstork_eu_2018_07 <- gbif_wstork_eu_2018_07$data
# 12_December
gbif_wstork_eu_2018_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2018", month=12)
gbif_wstork_eu_2018_12 <- gbif_wstork_eu_2018_12$data

### all months gathered
gbif_wstork_eu_2018 <- bind_rows(gbif_wstork_eu_2018_01, gbif_wstork_eu_2018_02, gbif_wstork_eu_2018_05, 
                                 gbif_wstork_eu_2018_06, gbif_wstork_eu_2018_07, gbif_wstork_eu_2018_12)
# saving gathered occurrences
save(gbif_wstork_eu_2018, file='./gbif/gbif_wstork_eu_2018.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2018_01, gbif_wstork_eu_2018_02, gbif_wstork_eu_2018_05, 
   gbif_wstork_eu_2018_06, gbif_wstork_eu_2018_07, gbif_wstork_eu_2018_12)

### 2019
# 01_January
gbif_wstork_eu_2019_01 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,  
                                     year="2019", month=1)
gbif_wstork_eu_2019_01 <- gbif_wstork_eu_2019_01$data
# 02_February
gbif_wstork_eu_2019_02 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2019", month=2)
gbif_wstork_eu_2019_02 <- gbif_wstork_eu_2019_02$data
# 05_May
gbif_wstork_eu_2019_05 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2019", month=5)
gbif_wstork_eu_2019_05 <- gbif_wstork_eu_2019_05$data
# 06_June
gbif_wstork_eu_2019_06 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2019", month=6)
gbif_wstork_eu_2019_06 <- gbif_wstork_eu_2019_06$data
# 07_July
gbif_wstork_eu_2019_07 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2019", month=7)
gbif_wstork_eu_2019_07 <- gbif_wstork_eu_2019_07$data
# 12_December
gbif_wstork_eu_2019_12 <- occ_search(scientificName = "Ciconia ciconia", hasCoordinate = T, limit = 80,
                                     decimalLatitude = "35,70", decimalLongitude = "-25,40", hasGeospatialIssue=FALSE,
                                     year="2019", month=12)
gbif_wstork_eu_2019_12 <- gbif_wstork_eu_2019_12$data

### all months gathered
gbif_wstork_eu_2019 <- bind_rows(gbif_wstork_eu_2019_01, gbif_wstork_eu_2019_02, gbif_wstork_eu_2019_05, 
                                 gbif_wstork_eu_2019_06, gbif_wstork_eu_2019_07, gbif_wstork_eu_2019_12)
# saving gathered occurrences
save(gbif_wstork_eu_2019, file='./gbif/gbif_wstork_eu_2019.RData')
# removing unnecessary old monthly occurrences files
rm(gbif_wstork_eu_2019_01, gbif_wstork_eu_2019_02, gbif_wstork_eu_2019_05, 
   gbif_wstork_eu_2019_06, gbif_wstork_eu_2019_07, gbif_wstork_eu_2019_12)


##################################################
### 1.2 - SUBSETS - Years
##################################################
  ###-------------------------------------------
  ### Subsets - Africa 
  ###-------------------------------------------
  ### 2015 to 2019 
  gbif_wstork_africa_2015_2019 <- bind_rows(gbif_wstork_africa_2015, gbif_wstork_africa_2016, gbif_wstork_africa_2017, gbif_wstork_africa_2018, gbif_wstork_africa_2019)
    # remove old year occ files
    rm(gbif_wstork_africa_2015, gbif_wstork_africa_2016, gbif_wstork_africa_2017, gbif_wstork_africa_2018, gbif_wstork_africa_2019)
  ### 2010 to 2014 
  gbif_wstork_africa_2010_2014 <- bind_rows(gbif_wstork_africa_2010, gbif_wstork_africa_2011, gbif_wstork_africa_2012, gbif_wstork_africa_2013, gbif_wstork_africa_2014)
    # remove old year occ files
  rm(gbif_wstork_africa_2010, gbif_wstork_africa_2011, gbif_wstork_africa_2012, gbif_wstork_africa_2013, gbif_wstork_africa_2014)
  ### 2005 to 2009 
  gbif_wstork_africa_2005_2009 <- bind_rows(gbif_wstork_africa_2005, gbif_wstork_africa_2006, gbif_wstork_africa_2007, gbif_wstork_africa_2008, gbif_wstork_africa_2009)
    # remove old year occ files
    rm(gbif_wstork_africa_2005, gbif_wstork_africa_2006, gbif_wstork_africa_2007, gbif_wstork_africa_2008, gbif_wstork_africa_2009)
  ### 2000 to 2004 
  gbif_wstork_africa_2000_2004 <- bind_rows(gbif_wstork_africa_2000, gbif_wstork_africa_2001, gbif_wstork_africa_2002, gbif_wstork_africa_2003, gbif_wstork_africa_2004)
    # remove old year occ files
    rm(gbif_wstork_africa_2000, gbif_wstork_africa_2001, gbif_wstork_africa_2002, gbif_wstork_africa_2003, gbif_wstork_africa_2004)
  ### 2000 to 2019
  gbif_wstork_africa_2000_2019 <- bind_rows(gbif_wstork_africa_2000_2004, gbif_wstork_africa_2005_2009, gbif_wstork_africa_2010_2014,
                                        gbif_wstork_africa_2015_2019)

  ###-------------------------------------------
  ### Subsets - EU 
  ###-------------------------------------------
  ### 2015 to 2019 
  gbif_wstork_eu_2015_2019 <- bind_rows(gbif_wstork_eu_2015, gbif_wstork_eu_2016, gbif_wstork_eu_2017, gbif_wstork_eu_2018, gbif_wstork_eu_2019)
    # remove old year occ files
    rm(gbif_wstork_eu_2015, gbif_wstork_eu_2016, gbif_wstork_eu_2017, gbif_wstork_eu_2018, gbif_wstork_eu_2019)
  ### 2010 to 2014 
  gbif_wstork_eu_2010_2014 <- bind_rows(gbif_wstork_eu_2010, gbif_wstork_eu_2011, gbif_wstork_eu_2012, gbif_wstork_eu_2013, gbif_wstork_eu_2014)
    # remove old year occ files
    rm(gbif_wstork_eu_2010, gbif_wstork_eu_2011, gbif_wstork_eu_2012, gbif_wstork_eu_2013, gbif_wstork_eu_2014)
  ### 2005 to 2009 
  gbif_wstork_eu_2005_2009 <- bind_rows(gbif_wstork_eu_2005, gbif_wstork_eu_2006, gbif_wstork_eu_2007, gbif_wstork_eu_2008, gbif_wstork_eu_2009)
    # remove old year occ files
    rm(gbif_wstork_eu_2005, gbif_wstork_eu_2006, gbif_wstork_eu_2007, gbif_wstork_eu_2008, gbif_wstork_eu_2009)
  ### 2000 to 2004 
  gbif_wstork_eu_2000_2004 <- bind_rows(gbif_wstork_eu_2000, gbif_wstork_eu_2001, gbif_wstork_eu_2002, gbif_wstork_eu_2003, gbif_wstork_eu_2004)
    # remove old year occ files
    rm(gbif_wstork_eu_2000, gbif_wstork_eu_2001, gbif_wstork_eu_2002, gbif_wstork_eu_2003, gbif_wstork_eu_2004)
  ### 2000 to 2019
  gbif_wstork_eu_2000_2019 <- bind_rows(gbif_wstork_eu_2000_2004, gbif_wstork_eu_2005_2009, gbif_wstork_eu_2010_2014,
                                        gbif_wstork_eu_2015_2019)

  
  ###-------------------------------------------
  ### Subset - entire region
  ###-------------------------------------------
  ### 2000 - 2019 
    gbif_wstork_2000_2019 <- bind_rows(gbif_wstork_africa_2000_2019, gbif_wstork_eu_2000_2019)

  ###-------------------------------------------
  ### RECORDS per season - 2000 to 2019
  ###-------------------------------------------
  # Summer
  gbif_wstork_2000_2019_summer <- subset(gbif_wstork_2000_2019, month>=5 & month<=7)
  # Winter
  gbif_wstork_2000_2019_winter_1_2 <- subset(gbif_wstork_2000_2019, month< 3)
  gbif_wstork_2000_2019_winter_12 <- subset(gbif_wstork_2000_2019, month==12)
  gbif_wstork_2000_2019_winter <-  bind_rows(gbif_wstork_2000_2019_winter_1_2, gbif_wstork_2000_2019_winter_12)
  # remove winter month files
  rm(gbif_wstork_2000_2019_winter_1_2, gbif_wstork_2000_2019_winter_12)
  
##################################################
### 1.3 - CROSS-CHECKING AND CLEANING GBIF DATA #
##################################################
### Seasons 2000 - 2019
  # Winter
  gbif_wstork_2000_2019_winter <- clean_coordinates(gbif_wstork_2000_2019_winter, lon="decimalLongitude", lat="decimalLatitude",
                                                     countries = "countryCode", tests=c("centroids", "duplicates", "institutions"),
                                                     inst_rad = 2000)
  gbif_wstork_2000_2019_winter <- gbif_wstork_2000_2019_winter[gbif_wstork_2000_2019_winter$.summary,]
  save(gbif_wstork_2000_2019_winter, file="./gbif/gbif_wstork_2000_2019_winter.RData")
  # Summer
  gbif_wstork_2000_2019_summer <- clean_coordinates(gbif_wstork_2000_2019_summer, lon="decimalLongitude", lat="decimalLatitude",
                                                    countries = "countryCode", tests=c("centroids", "duplicates", "institutions"),
                                                    inst_rad = 2000)
  gbif_wstork_2000_2019_summer <- gbif_wstork_2000_2019_summer[gbif_wstork_2000_2019_summer$.summary,]
  save(gbif_wstork_2000_2019_summer, file="./gbif/gbif_wstork_2000_2019_summer.RData")
  
 

##################################################
# 2 - VARIABLES #
##################################################

   ### Precipitation - Seasons
## Breeding
# load seasonal files & create Stack
precmean_breeding <- list.files(path = "./variables/chelsa/prec/breeding",
                                full.names=T, pattern = "tif$")
precmean_breeding <- stack(precmean_breeding)
# create mean of all Stack-rasterlayers for seasonal mean
precmean_breeding <- calc(precmean_breeding, mean)
e <- extent(-25,52,-40,70)
precmean_breeding <- crop(precmean_breeding,e)
writeRaster(precmean_breeding, filename = "./variables/chelsa/prec/precmean_breeding.tif", format = 'GTiff', overwrite = T)
## Wintering
# load seasonal files & create Stack
precmean_wintering <- list.files(path = "./variables/chelsa/prec/wintering",
                                full.names=T, pattern = "tif$")
precmean_wintering <- stack(precmean_wintering)
# create mean of all Stack-rasterlayers for seasonal mean
precmean_wintering <- calc(precmean_wintering, mean)
e <- extent(-25,52,-40,70)
precmean_wintering <- crop(precmean_wintering,e)
writeRaster(precmean_wintering, filename = "./variables/chelsa/prec/precmean_wintering.tif", format = 'GTiff', overwrite = T)

   ### tmax - Seasons
## Breeding
# load seasonal files & create Stack
tmax_breeding <- list.files(path = "./variables/chelsa/tmax/breeding",
                                full.names=T, pattern = "tif$")
tmax_breeding <- stack(tmax_breeding)
# create mean of all Stack-rasterlayers for seasonal mean
tmax_breeding <- calc(tmax_breeding, mean)
e <- extent(-25,52,-40,70)
tmax_breeding <- crop(tmax_breeding,e)
writeRaster(tmax_breeding, filename = "./variables/chelsa/tmax/tmax_breeding.tif", format = 'GTiff', overwrite = T)
## Wintering
# load seasonal files & create Stack
tmax_wintering <- list.files(path = "./variables/chelsa/tmax/wintering",
                                 full.names=T, pattern = "tif$")
tmax_wintering <- stack(tmax_wintering)
# create mean of all Stack-rasterlayers for seasonal mean
tmax_wintering <- calc(tmax_wintering, mean)
e <- extent(-25,52,-40,70)
tmax_wintering <- crop(tmax_wintering,e)
writeRaster(tmax_wintering, filename = "./variables/chelsa/tmax/tmax_wintering.tif", format = 'GTiff', overwrite = T)

   ### tmin - Seasons
## Breeding
# load seasonal files & create Stack
tmin_breeding <- list.files(path = "./variables/chelsa/tmin/breeding",
                            full.names=T, pattern = "tif$")
tmin_breeding <- stack(tmin_breeding)
# create mean of all Stack-rasterlayers for seasonal mean
tmin_breeding <- calc(tmin_breeding, mean)
e <- extent(-25,52,-40,70)
tmin_breeding <- crop(tmin_breeding,e)
writeRaster(tmin_breeding, filename = "./variables/chelsa/tmin/tmin_breeding.tif", format = 'GTiff', overwrite = T)
## Wintering
# load seasonal files & create Stack
tmin_wintering <- list.files(path = "./variables/chelsa/tmin/wintering",
                             full.names=T, pattern = "tif$")
tmin_wintering <- stack(tmin_wintering)
# create mean of all Stack-rasterlayers for seasonal mean
tmin_wintering <- calc(tmin_wintering, mean)
e <- extent(-25,52,-40,70)
tmin_wintering <- crop(tmin_wintering,e)
writeRaster(tmin_wintering, filename = "./variables/chelsa/tmin/tmin_wintering.tif", format = 'GTiff', overwrite = T)
  
   ### tmean - Seasons
## Breeding
# load seasonal files & create Stack
tmean_breeding <- list.files(path = "./variables/chelsa/tmean/breeding",
                            full.names=T, pattern = "tif$")
tmean_breeding <- stack(tmean_breeding)
# create mean of all Stack-rasterlayers for seasonal mean
tmean_breeding <- calc(tmean_breeding, mean)
e <- extent(-25,52,-40,70)
tmean_breeding <- crop(tmean_breeding,e)
writeRaster(tmean_breeding, filename = "./variables/chelsa/tmean/tmean_breeding.tif", format = 'GTiff', overwrite = T)
## Wintering
# load seasonal files & create Stack
tmean_wintering <- list.files(path = "./variables/chelsa/tmean/wintering",
                             full.names=T, pattern = "tif$")
tmean_wintering <- stack(tmean_wintering)
# create mean of all Stack-rasterlayers for seasonal mean
tmean_wintering <- calc(tmean_wintering, mean) 
e <- extent(-25,52,-40,70)
tmean_wintering <- crop(tmean_wintering,e)
writeRaster(tmean_wintering, filename = "./variables/chelsa/tmean/tmean_wintering.tif", format = 'GTiff', overwrite = T)

 


# chelsa climate variables - Annual Mean Temperature - 1km^2
tmean <- raster("./variables/chelsa/CHELSA_bio10_01.tif")
tmean <- crop(tmean,e)
writeRaster(tmean, filename = "./variables/chelsa/tmean.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Mean Diurnal Range - 1km^2
diurnalmean <- raster("./variables/chelsa/CHELSA_bio10_02.tif")
diurnalmean <- crop(diurnalmean,e)
writeRaster(diurnalmean, filename = "./variables/chelsa/diurnalmean.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Isothermality - 1km^2
iso <- raster("./variables/chelsa/CHELSA_bio10_03.tif")
iso <- crop(iso,e)
writeRaster(iso, filename = "./variables/chelsa/iso.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Temperature Seasonality - 1km^2
tseas <- raster("./variables/chelsa/CHELSA_bio10_04.tif")
tseas <- crop(tseas,e)
writeRaster(tseas, filename = "./variables/chelsa/tseas.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Max Temperature of Warmest Month - 1km^2
tmax <- raster("./variables/chelsa/CHELSA_bio10_05.tif")
tmax <- crop(tmax,e)
writeRaster(tmax, filename = "./variables/chelsa/tmax.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Min Temperature of Coldest Month - 1km^2
tmin <- raster("./variables/chelsa/CHELSA_bio10_06.tif")
tmin <- crop(tmin,e)
writeRaster(tmin, filename = "./variables/chelsa/tmin.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Temperature Annual Range - 1km^2
tarange <- raster("./variables/chelsa/CHELSA_bio10_07.tif")
tarange <- crop(tarange,e)
writeRaster(tarange, filename = "./variables/chelsa/tarange.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Mean Temperature of Wettest Quarter - 1km^2
tmeanWeQ <- raster("./variables/chelsa/CHELSA_bio10_08.tif")
tmeanWeQ <- crop(tmeanWeQ,e)
writeRaster(tmeanWeQ, filename = "./variables/chelsa/tmeanWeQ.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Mean Temperature of Driest Quarter - 1km^2
tmeanDQ <- raster("./variables/chelsa/CHELSA_bio10_09.tif")
tmeanDQ <- crop(tmeanDQ,e)
writeRaster(tmeanDQ, filename = "./variables/chelsa/tmeanDQ.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Mean Temperature of Warmest Quarter - 1km^2
tmeanWaQ <- raster("./variables/chelsa/CHELSA_bio10_10.tif")
tmeanWaQ <- crop(tmeanWaQ,e)
writeRaster(tmeanWaQ, filename = "./variables/chelsa/tmeanWaQ.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Mean Temperature of Coldest Quarter - 1km^2
tmeanCQ <- raster("./variables/chelsa/CHELSA_bio10_11.tif")
tmeanCQ <- crop(tmeanCQ,e)
writeRaster(tmeanCQ, filename = "./variables/chelsa/tmeanCQ.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Annual Precipitation - 1km^2
prec <- raster("./variables/chelsa/CHELSA_bio10_12.tif")
prec <- crop(prec,e)
writeRaster(prec, filename = "./variables/chelsa/prec.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Precipitation of Wettest Month - 1km^2
precWeM <- raster("./variables/chelsa/CHELSA_bio10_13.tif")
precWeM <- crop(precWeM,e)
writeRaster(precWeM, filename = "./variables/chelsa/precWeM.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Precipitation of Driest Month - 1km^2
precDM <- raster("./variables/chelsa/CHELSA_bio10_14.tif")
precDM <- crop(precDM,e)
writeRaster(precDM, filename = "./variables/chelsa/precDM.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Precipitation Seasonality - 1km^2
precseas <- raster("./variables/chelsa/CHELSA_bio10_15.tif")
precseas <- crop(precseas,e)
writeRaster(precseas, filename = "./variables/chelsa/precseas.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Precipitation of Wettest Quarter - 1km^2
precWeQ <- raster("./variables/chelsa/CHELSA_bio10_16.tif")
precWeQ <- crop(precWeQ,e)
writeRaster(precWeQ, filename = "./variables/chelsa/precWeQ.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Precipitation of Driest Quarter - 1km^2
precDQ <- raster("./variables/chelsa/CHELSA_bio10_17.tif")
precDQ <- crop(precDQ,e)
writeRaster(precDQ, filename = "./variables/chelsa/precDQ.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Precipitation of Warmest Quarter - 1km^2
precWaQ <- raster("./variables/chelsa/CHELSA_bio10_18.tif")
precWaQ <- crop(precWaQ,e)
writeRaster(precWaQ, filename = "./variables/chelsa/precWaQ.tif", format = 'GTiff', overwrite = T)

# chelsa climate variables - Precipitation of Coldest Quarter - 1km^2
precCQ <- raster("./variables/chelsa/CHELSA_bio10_19.tif")
precCQ <- crop(precCQ,e)
writeRaster(precCQ, filename = "./variables/chelsa/precCQ.tif", format = 'GTiff', overwrite = T)


# NDVI longterm data provided by Copernicus Global Land Service - 300m
ndvi <- raster("./variables/c_gls_NDVI-LTS_1999-2017-0811_GLOBE_VGT-PROBAV_V2.2.1.nc")
writeRaster(ndvi, filename = "./variables/ndvi.tif", format = 'GTiff', overwrite = T)
ndvi <- raster("./variables/ndvi.tif")
crs(ndvi)
projection(ndvi) <- CRS('+proj=longlat +datum=WGS84')
ndvi <- disaggregate(ndvi, fact=3, method="")
ndvi <- aggregate(ndvi, fact=1, fun=mean)
writeRaster(ndvi, filename = "./variables/ndvi.tif", format = 'GTiff', overwrite = T)
plot(ndvi)
  #------
#NDVI monthly (from GF)
# STUDY REGION EXTENT
e <- extent(-25,52,-40,70)

### 2000
# stack both year files
ndvi3g_2000_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2000/ndvi3g_geo_v1_2000_0106.nc4",
                      varname = "ndvi")
ndvi3g_2000_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2000/ndvi3g_geo_v1_2000_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2000 <- stack(ndvi3g_2000_0106, ndvi3g_2000_0712)
# crop to study region extent
ndvi3g_2000 <- crop(ndvi3g_2000, e)
## WINTER
# Select Winter months from stack
ndvi3g_2000_winter_1_2 <- subset(ndvi3g_2000, 1:4)
ndvi3g_2000_winter_12 <- subset(ndvi3g_2000, 23:24)
ndvi3g_2000_winter <- stack(ndvi3g_2000_winter_1_2, ndvi3g_2000_winter_12)
# calc mean of all winter months
ndvi3g_2000_winter <- calc(ndvi3g_2000_winter, mean)
writeRaster(ndvi3g_2000_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2000/ndvi3g_geo_v1_2000_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2000_breeding <- subset(ndvi3g_2000, 9:14)
# calc mean of all breeding months
ndvi3g_2000_breeding <- calc(ndvi3g_2000_breeding, mean)
writeRaster(ndvi3g_2000_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2000/ndvi3g_geo_v1_2000_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2001
# stack both year files
ndvi3g_2001_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2001/ndvi3g_geo_v1_2001_0106.nc4",
                          varname = "ndvi")
ndvi3g_2001_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2001/ndvi3g_geo_v1_2001_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2001 <- stack(ndvi3g_2001_0106, ndvi3g_2001_0712)
# crop to study region extent
ndvi3g_2001 <- crop(ndvi3g_2001, e)
## WINTER
# Select Winter months from stack
ndvi3g_2001_winter_1_2 <- subset(ndvi3g_2001, 1:4)
ndvi3g_2001_winter_12 <- subset(ndvi3g_2001, 23:24)
ndvi3g_2001_winter <- stack(ndvi3g_2001_winter_1_2, ndvi3g_2001_winter_12)
# calc mean of all winter months
ndvi3g_2001_winter <- calc(ndvi3g_2001_winter, mean)
writeRaster(ndvi3g_2001_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2001/ndvi3g_geo_v1_2001_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2001_breeding <- subset(ndvi3g_2001, 9:14)
# calc mean of all breeding months
ndvi3g_2001_breeding <- calc(ndvi3g_2001_breeding, mean)
writeRaster(ndvi3g_2001_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2001/ndvi3g_geo_v1_2001_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2002
# stack both year files
ndvi3g_2002_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2002/ndvi3g_geo_v1_2002_0106.nc4",
                          varname = "ndvi")
ndvi3g_2002_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2002/ndvi3g_geo_v1_2002_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2002 <- stack(ndvi3g_2002_0106, ndvi3g_2002_0712)
# crop to study region extent
ndvi3g_2002 <- crop(ndvi3g_2002, e)
## WINTER
# Select Winter months from stack
ndvi3g_2002_winter_1_2 <- subset(ndvi3g_2002, 1:4)
ndvi3g_2002_winter_12 <- subset(ndvi3g_2002, 23:24)
ndvi3g_2002_winter <- stack(ndvi3g_2002_winter_1_2, ndvi3g_2002_winter_12)
# calc mean of all winter months
ndvi3g_2002_winter <- calc(ndvi3g_2002_winter, mean)
writeRaster(ndvi3g_2002_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2002/ndvi3g_geo_v1_2002_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2002_breeding <- subset(ndvi3g_2002, 9:14)
# calc mean of all breeding months
ndvi3g_2002_breeding <- calc(ndvi3g_2002_breeding, mean)
writeRaster(ndvi3g_2002_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2002/ndvi3g_geo_v1_2002_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2003
# stack both year files
ndvi3g_2003_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2003/ndvi3g_geo_v1_2003_0106.nc4",
                          varname = "ndvi")
ndvi3g_2003_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2003/ndvi3g_geo_v1_2003_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2003 <- stack(ndvi3g_2003_0106, ndvi3g_2003_0712)
# crop to study region extent
ndvi3g_2003 <- crop(ndvi3g_2003, e)
## WINTER
# Select Winter months from stack
ndvi3g_2003_winter_1_2 <- subset(ndvi3g_2003, 1:4)
ndvi3g_2003_winter_12 <- subset(ndvi3g_2003, 23:24)
ndvi3g_2003_winter <- stack(ndvi3g_2003_winter_1_2, ndvi3g_2003_winter_12)
# calc mean of all winter months
ndvi3g_2003_winter <- calc(ndvi3g_2003_winter, mean)
writeRaster(ndvi3g_2003_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2003/ndvi3g_geo_v1_2003_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2003_breeding <- subset(ndvi3g_2003, 9:14)
# calc mean of all breeding months
ndvi3g_2003_breeding <- calc(ndvi3g_2003_breeding, mean)
writeRaster(ndvi3g_2003_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2003/ndvi3g_geo_v1_2003_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2004
# stack both year files
ndvi3g_2004_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2004/ndvi3g_geo_v1_2004_0106.nc4",
                          varname = "ndvi")
ndvi3g_2004_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2004/ndvi3g_geo_v1_2004_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2004 <- stack(ndvi3g_2004_0106, ndvi3g_2004_0712)
# crop to study region extent
ndvi3g_2004 <- crop(ndvi3g_2004, e)
## WINTER
# Select Winter months from stack
ndvi3g_2004_winter_1_2 <- subset(ndvi3g_2004, 1:4)
ndvi3g_2004_winter_12 <- subset(ndvi3g_2004, 23:24)
ndvi3g_2004_winter <- stack(ndvi3g_2004_winter_1_2, ndvi3g_2004_winter_12)
# calc mean of all winter months
ndvi3g_2004_winter <- calc(ndvi3g_2004_winter, mean)
writeRaster(ndvi3g_2004_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2004/ndvi3g_geo_v1_2004_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2004_breeding <- subset(ndvi3g_2004, 9:14)
# calc mean of all breeding months
ndvi3g_2004_breeding <- calc(ndvi3g_2004_breeding, mean)
writeRaster(ndvi3g_2004_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2004/ndvi3g_geo_v1_2004_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2005
# stack both year files
ndvi3g_2005_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2005/ndvi3g_geo_v1_2005_0106.nc4",
                          varname = "ndvi")
ndvi3g_2005_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2005/ndvi3g_geo_v1_2005_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2005 <- stack(ndvi3g_2005_0106, ndvi3g_2005_0712)
# crop to study region extent
ndvi3g_2005 <- crop(ndvi3g_2005, e)
## WINTER
# Select Winter months from stack
ndvi3g_2005_winter_1_2 <- subset(ndvi3g_2005, 1:4)
ndvi3g_2005_winter_12 <- subset(ndvi3g_2005, 23:24)
ndvi3g_2005_winter <- stack(ndvi3g_2005_winter_1_2, ndvi3g_2005_winter_12)
# calc mean of all winter months
ndvi3g_2005_winter <- calc(ndvi3g_2005_winter, mean)
writeRaster(ndvi3g_2005_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2005/ndvi3g_geo_v1_2005_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2005_breeding <- subset(ndvi3g_2005, 9:14)
# calc mean of all breeding months
ndvi3g_2005_breeding <- calc(ndvi3g_2005_breeding, mean)
writeRaster(ndvi3g_2005_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2005/ndvi3g_geo_v1_2005_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2006
# stack both year files
ndvi3g_2006_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2006/ndvi3g_geo_v1_2006_0106.nc4",
                          varname = "ndvi")
ndvi3g_2006_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2006/ndvi3g_geo_v1_2006_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2006 <- stack(ndvi3g_2006_0106, ndvi3g_2006_0712)
# crop to study region extent
ndvi3g_2006 <- crop(ndvi3g_2006, e)
## WINTER
# Select Winter months from stack
ndvi3g_2006_winter_1_2 <- subset(ndvi3g_2006, 1:4)
ndvi3g_2006_winter_12 <- subset(ndvi3g_2006, 23:24)
ndvi3g_2006_winter <- stack(ndvi3g_2006_winter_1_2, ndvi3g_2006_winter_12)
# calc mean of all winter months
ndvi3g_2006_winter <- calc(ndvi3g_2006_winter, mean)
writeRaster(ndvi3g_2006_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2006/ndvi3g_geo_v1_2006_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2006_breeding <- subset(ndvi3g_2006, 9:14)
# calc mean of all breeding months
ndvi3g_2006_breeding <- calc(ndvi3g_2006_breeding, mean)
writeRaster(ndvi3g_2006_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2006/ndvi3g_geo_v1_2006_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2007
# stack both year files
ndvi3g_2007_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2007/ndvi3g_geo_v1_2007_0106.nc4",
                          varname = "ndvi")
ndvi3g_2007_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2007/ndvi3g_geo_v1_2007_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2007 <- stack(ndvi3g_2007_0106, ndvi3g_2007_0712)
# crop to study region extent
ndvi3g_2007 <- crop(ndvi3g_2007, e)
## WINTER
# Select Winter months from stack
ndvi3g_2007_winter_1_2 <- subset(ndvi3g_2007, 1:4)
ndvi3g_2007_winter_12 <- subset(ndvi3g_2007, 23:24)
ndvi3g_2007_winter <- stack(ndvi3g_2007_winter_1_2, ndvi3g_2007_winter_12)
# calc mean of all winter months
ndvi3g_2007_winter <- calc(ndvi3g_2007_winter, mean)
writeRaster(ndvi3g_2007_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2007/ndvi3g_geo_v1_2007_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2007_breeding <- subset(ndvi3g_2007, 9:14)
# calc mean of all breeding months
ndvi3g_2007_breeding <- calc(ndvi3g_2007_breeding, mean)
writeRaster(ndvi3g_2007_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2007/ndvi3g_geo_v1_2007_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2008
# stack both year files
ndvi3g_2008_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2008/ndvi3g_geo_v1_2008_0106.nc4",
                          varname = "ndvi")
ndvi3g_2008_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2008/ndvi3g_geo_v1_2008_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2008 <- stack(ndvi3g_2008_0106, ndvi3g_2008_0712)
# crop to study region extent
ndvi3g_2008 <- crop(ndvi3g_2008, e)
## WINTER
# Select Winter months from stack
ndvi3g_2008_winter_1_2 <- subset(ndvi3g_2008, 1:4)
ndvi3g_2008_winter_12 <- subset(ndvi3g_2008, 23:24)
ndvi3g_2008_winter <- stack(ndvi3g_2008_winter_1_2, ndvi3g_2008_winter_12)
# calc mean of all winter months
ndvi3g_2008_winter <- calc(ndvi3g_2008_winter, mean)
writeRaster(ndvi3g_2008_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2008/ndvi3g_geo_v1_2008_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2008_breeding <- subset(ndvi3g_2008, 9:14)
# calc mean of all breeding months
ndvi3g_2008_breeding <- calc(ndvi3g_2008_breeding, mean)
writeRaster(ndvi3g_2008_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2008/ndvi3g_geo_v1_2008_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2009
# stack both year files
ndvi3g_2009_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2009/ndvi3g_geo_v1_2009_0106.nc4",
                          varname = "ndvi")
ndvi3g_2009_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2009/ndvi3g_geo_v1_2009_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2009 <- stack(ndvi3g_2009_0106, ndvi3g_2009_0712)
# crop to study region extent
ndvi3g_2009 <- crop(ndvi3g_2009, e)
## WINTER
# Select Winter months from stack
ndvi3g_2009_winter_1_2 <- subset(ndvi3g_2009, 1:4)
ndvi3g_2009_winter_12 <- subset(ndvi3g_2009, 23:24)
ndvi3g_2009_winter <- stack(ndvi3g_2009_winter_1_2, ndvi3g_2009_winter_12)
# calc mean of all winter months
ndvi3g_2009_winter <- calc(ndvi3g_2009_winter, mean)
writeRaster(ndvi3g_2009_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2009/ndvi3g_geo_v1_2009_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2009_breeding <- subset(ndvi3g_2009, 9:14)
# calc mean of all breeding months
ndvi3g_2009_breeding <- calc(ndvi3g_2009_breeding, mean)
writeRaster(ndvi3g_2009_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2009/ndvi3g_geo_v1_2009_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2010
# stack both year files
ndvi3g_2010_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2010/ndvi3g_geo_v1_2010_0106.nc4",
                          varname = "ndvi")
ndvi3g_2010_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2010/ndvi3g_geo_v1_2010_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2010 <- stack(ndvi3g_2010_0106, ndvi3g_2010_0712)
# crop to study region extent
ndvi3g_2010 <- crop(ndvi3g_2010, e)
## WINTER
# Select Winter months from stack
ndvi3g_2010_winter_1_2 <- subset(ndvi3g_2010, 1:4)
ndvi3g_2010_winter_12 <- subset(ndvi3g_2010, 23:24)
ndvi3g_2010_winter <- stack(ndvi3g_2010_winter_1_2, ndvi3g_2010_winter_12)
# calc mean of all winter months
ndvi3g_2010_winter <- calc(ndvi3g_2010_winter, mean)
writeRaster(ndvi3g_2010_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2010/ndvi3g_geo_v1_2010_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2010_breeding <- subset(ndvi3g_2010, 9:14)
# calc mean of all breeding months
ndvi3g_2010_breeding <- calc(ndvi3g_2010_breeding, mean)
writeRaster(ndvi3g_2010_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2010/ndvi3g_geo_v1_2010_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2011
# stack both year files
ndvi3g_2011_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2011/ndvi3g_geo_v1_2011_0106.nc4",
                          varname = "ndvi")
ndvi3g_2011_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2011/ndvi3g_geo_v1_2011_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2011 <- stack(ndvi3g_2011_0106, ndvi3g_2011_0712)
# crop to study region extent
ndvi3g_2011 <- crop(ndvi3g_2011, e)
## WINTER
# Select Winter months from stack
ndvi3g_2011_winter_1_2 <- subset(ndvi3g_2011, 1:4)
ndvi3g_2011_winter_12 <- subset(ndvi3g_2011, 23:24)
ndvi3g_2011_winter <- stack(ndvi3g_2011_winter_1_2, ndvi3g_2011_winter_12)
# calc mean of all winter months
ndvi3g_2011_winter <- calc(ndvi3g_2011_winter, mean)
writeRaster(ndvi3g_2011_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2011/ndvi3g_geo_v1_2011_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2011_breeding <- subset(ndvi3g_2011, 9:14)
# calc mean of all breeding months
ndvi3g_2011_breeding <- calc(ndvi3g_2011_breeding, mean)
writeRaster(ndvi3g_2011_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2011/ndvi3g_geo_v1_2011_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2012
# stack both year files
ndvi3g_2012_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2012/ndvi3g_geo_v1_2012_0106.nc4",
                          varname = "ndvi")
ndvi3g_2012_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2012/ndvi3g_geo_v1_2012_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2012 <- stack(ndvi3g_2012_0106, ndvi3g_2012_0712)
# crop to study region extent
ndvi3g_2012 <- crop(ndvi3g_2012, e)
## WINTER
# Select Winter months from stack
ndvi3g_2012_winter_1_2 <- subset(ndvi3g_2012, 1:4)
ndvi3g_2012_winter_12 <- subset(ndvi3g_2012, 23:24)
ndvi3g_2012_winter <- stack(ndvi3g_2012_winter_1_2, ndvi3g_2012_winter_12)
# calc mean of all winter months
ndvi3g_2012_winter <- calc(ndvi3g_2012_winter, mean)
writeRaster(ndvi3g_2012_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2012/ndvi3g_geo_v1_2012_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2012_breeding <- subset(ndvi3g_2012, 9:14)
# calc mean of all breeding months
ndvi3g_2012_breeding <- calc(ndvi3g_2012_breeding, mean)
writeRaster(ndvi3g_2012_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2012/ndvi3g_geo_v1_2012_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2013
# stack both year files
ndvi3g_2013_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2013/ndvi3g_geo_v1_2013_0106.nc4",
                          varname = "ndvi")
ndvi3g_2013_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2013/ndvi3g_geo_v1_2013_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2013 <- stack(ndvi3g_2013_0106, ndvi3g_2013_0712)
# crop to study region extent
ndvi3g_2013 <- crop(ndvi3g_2013, e)
## WINTER
# Select Winter months from stack
ndvi3g_2013_winter_1_2 <- subset(ndvi3g_2013, 1:4)
ndvi3g_2013_winter_12 <- subset(ndvi3g_2013, 23:24)
ndvi3g_2013_winter <- stack(ndvi3g_2013_winter_1_2, ndvi3g_2013_winter_12)
# calc mean of all winter months
ndvi3g_2013_winter <- calc(ndvi3g_2013_winter, mean)
writeRaster(ndvi3g_2013_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2013/ndvi3g_geo_v1_2013_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2013_breeding <- subset(ndvi3g_2013, 9:14)
# calc mean of all breeding months
ndvi3g_2013_breeding <- calc(ndvi3g_2013_breeding, mean)
writeRaster(ndvi3g_2013_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2013/ndvi3g_geo_v1_2013_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2014
# stack both year files
ndvi3g_2014_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2014/ndvi3g_geo_v1_2014_0106.nc4",
                          varname = "ndvi")
ndvi3g_2014_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2014/ndvi3g_geo_v1_2014_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2014 <- stack(ndvi3g_2014_0106, ndvi3g_2014_0712)
# crop to study region extent
ndvi3g_2014 <- crop(ndvi3g_2014, e)
## WINTER
# Select Winter months from stack
ndvi3g_2014_winter_1_2 <- subset(ndvi3g_2014, 1:4)
ndvi3g_2014_winter_12 <- subset(ndvi3g_2014, 23:24)
ndvi3g_2014_winter <- stack(ndvi3g_2014_winter_1_2, ndvi3g_2014_winter_12)
# calc mean of all winter months
ndvi3g_2014_winter <- calc(ndvi3g_2014_winter, mean)
writeRaster(ndvi3g_2014_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2014/ndvi3g_geo_v1_2014_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2014_breeding <- subset(ndvi3g_2014, 9:14)
# calc mean of all breeding months
ndvi3g_2014_breeding <- calc(ndvi3g_2014_breeding, mean)
writeRaster(ndvi3g_2014_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2014/ndvi3g_geo_v1_2014_breeding.tif",
            format = 'GTiff', overwrite = T)

### 2015
# stack both year files
ndvi3g_2015_0106 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2015/ndvi3g_geo_v1_2015_0106.nc4",
                          varname = "ndvi")
ndvi3g_2015_0712 <- stack("F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2015/ndvi3g_geo_v1_2015_0712.nc4",
                          varname = "ndvi")
# gather both year files to one stack (all months)
ndvi3g_2015 <- stack(ndvi3g_2015_0106, ndvi3g_2015_0712)
# crop to study region extent
ndvi3g_2015 <- crop(ndvi3g_2015, e)
## WINTER
# Select Winter months from stack
ndvi3g_2015_winter_1_2 <- subset(ndvi3g_2015, 1:4)
ndvi3g_2015_winter_12 <- subset(ndvi3g_2015, 23:24)
ndvi3g_2015_winter <- stack(ndvi3g_2015_winter_1_2, ndvi3g_2015_winter_12)
# calc mean of all winter months
ndvi3g_2015_winter <- calc(ndvi3g_2015_winter, mean)
writeRaster(ndvi3g_2015_winter, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2015/ndvi3g_geo_v1_2015_winter.tif",
            format = 'GTiff', overwrite = T)
## BREEDING
# Select breeding months from stack
ndvi3g_2015_breeding <- subset(ndvi3g_2015, 9:14)
# calc mean of all breeding months
ndvi3g_2015_breeding <- calc(ndvi3g_2015_breeding, mean)
writeRaster(ndvi3g_2015_breeding, filename = "F:/Bachelor-thesis/Global GIMMS NDVI3g (1981-2015)/2015/ndvi3g_geo_v1_2015_breeding.tif",
            format = 'GTiff', overwrite = T)



### 2000-2015 # WINTERING
# stack all seasonal files
ndvi_2000_2015_winter <- stack(ndvi3g_2000_winter, ndvi3g_2001_winter, ndvi3g_2002_winter, ndvi3g_2003_winter,
                                 ndvi3g_2004_winter, ndvi3g_2005_winter, ndvi3g_2006_winter, ndvi3g_2007_winter,
                                 ndvi3g_2008_winter, ndvi3g_2009_winter, ndvi3g_2010_winter, ndvi3g_2011_winter,
                                 ndvi3g_2012_winter, ndvi3g_2013_winter, ndvi3g_2014_winter, ndvi3g_2015_winter)
# calc mean of all wintering files
ndvi_2000_2015_winter <- calc(ndvi_2000_2015_winter, mean)
writeRaster(ndvi_2000_2015_winter, filename = "./variables/ndvi_2000_2015_wintering.tif",
            format = 'GTiff', overwrite = T)

### 2000-2015 # BREEDING
# stack all seasonal files
ndvi_2000_2015_breeding <- stack(ndvi3g_2000_breeding, ndvi3g_2001_breeding, ndvi3g_2002_breeding, ndvi3g_2003_breeding,
                               ndvi3g_2004_breeding, ndvi3g_2005_breeding, ndvi3g_2006_breeding, ndvi3g_2007_breeding,
                               ndvi3g_2008_breeding, ndvi3g_2009_breeding, ndvi3g_2010_breeding, ndvi3g_2011_breeding,
                               ndvi3g_2012_breeding, ndvi3g_2013_breeding, ndvi3g_2014_breeding, ndvi3g_2015_breeding)
# calc mean of all breeding files
ndvi_2000_2015_breeding <- calc(ndvi_2000_2015_breeding, mean)
writeRaster(ndvi_2000_2015_breeding, filename = "./variables/ndvi_2000_2015_breeding.tif",
            format = 'GTiff', overwrite = T)


  #------
# NDVI longterm data provided by Copernicus Global Land Service - 1km
ndvi <- raster("./variables/c_gls_NDVI-LTS_1999-2019-0101_GLOBE_VGT-PROBAV_V3.0.1.nc", varname = "mean")
proj4string(ndvi) <- CRS("+proj=longlat +datum=WGS84 +ellps=WGS84")
ndvi <- crop(ndvi,e)
writeRaster(ndvi, filename = "./variables/ndvi.tif", format = 'GTiff', overwrite = T)
#projection(ndvi) <- CRS('+proj=longlat +datum=WGS84')

# Copernicus Global Land Service: Tree Cover 100m: collection 3: epoch 201 - 100m
treecover <- raster("./variables/PROBAV_LC100_global_v3.0.1_2019-nrt_Tree-CoverFraction-layer_EPSG-4326.tif")
treecover <- crop(treecover,e)
treecover <- aggregate(treecover, fact=10, fun=mean)
writeRaster(treecover, filename = "./variables/treecover.tif", format = 'GTiff', overwrite = T)
res(treecover)

gc()
# Copernicus Global Land Service: Crops Cover 100m: collection 3: epoch 201 - 100m
cropscover <- raster("./variables/PROBAV_LC100_global_v3.0.1_2019-nrt_Crops-CoverFraction-layer_EPSG-4326.tif")
cropscover <- crop(cropscover,e)
cropscover <- aggregate(cropscover, fact=10, fun=mean)
writeRaster(cropscover, filename = "./variables/cropscover.tif", format = 'GTiff', overwrite = T)
res(cropscover)

# Copernicus Global Land Service: Grass Cover 100m: collection 3: epoch 201 - 100m
grasscover <- raster("./variables/PROBAV_LC100_global_v3.0.1_2019-nrt_Grass-CoverFraction-layer_EPSG-4326.tif")
grasscover <- crop(grasscover,e)
grasscover <- aggregate(grasscover, fact=10, fun=mean)
writeRaster(grasscover, filename = "./variables/grasscover.tif", format = 'GTiff', overwrite = T)
res(grasscover)

# Copernicus Global Land Service: Shrub Cover 100m: collection 3: epoch 201 - 100m
shrubcover <- raster("./variables/PROBAV_LC100_global_v3.0.1_2019-nrt_Shrub-CoverFraction-layer_EPSG-4326.tif")
shrubcover <- crop(shrubcover,e)
shrubcover <- aggregate(shrubcover, fact=10, fun=mean)
writeRaster(shrubcover, path="./variables", filename = "shrubcover.tif", format = 'GTiff', overwrite = T)
res(shrubcover)

##################################################
# 3 - BACKGROUND MASK #
##################################################
# write raster from bioclim for background, crop to extent of Europe and Africa
mask <- precDM
e <- extent(-25,52,-40,70)
mask <- crop(mask,e)
plot(mask, col="grey", legend=F)

# background mask - change values to 0
values(mask)[values(mask) < 0] = 0
values(mask)[values(mask) > 0] = 0
writeRaster(mask, filename="./raster/mask.grd", overwrite=T)

### BirdLife Range Maps
range_wstork <- shapefile("./birdlife_rangemaps/Ciconia_ciconia.shp")
range_wstork_wint <- subset(range_wstork, SEASONAL == c("1", "3"))
range_wstork_breed <- subset(range_wstork, SEASONAL == c("1", "2"))
# Plot Birdlife Range
plot(mask, col="grey", legend=F) # Mask
plot(range_wstork_wint, col="blue", add=T)
plot(range_wstork_breed, col="red", add=T, xlim = c(-25:52))



##################################################
# 4 - LOADING existing (original) data
##################################################
# Working direction
setwd("C:/Users/benne/Google Drive/Studium/Biologie/Bachelorarbeit/R Projects/WhiteStork/data")

### species data, divided into seasons ###
# 2000_2019
load("./gbif/gbif_wstork_2000_2019.RData")
load("./gbif/gbif_wstork_2000_2019_summer.RData")
load("./gbif/gbif_wstork_2000_2019_winter.RData")
# 2015_2019
load("./gbif/gbif_wstork_2015_2019_summer.RData")
load("./gbif/gbif_wstork_2015_2019_winter.RData")
# 2010_2014
load("./gbif/gbif_wstork_2010_2014_summer.RData")
load("./gbif/gbif_wstork_2010_2014_winter.RData")
# 2005_2009
load("./gbif/gbif_wstork_2005_2009_summer.RData")
load("./gbif/gbif_wstork_2005_2009_winter.RData")
# 2000_2004
load("./gbif/gbif_wstork_2000_2004_summer.RData")
load("./gbif/gbif_wstork_2000_2004_winter.RData")

### BirdLife Range Maps
range_wstork <- shapefile("./birdlife_rangemaps/Ciconia_ciconia.shp")
range_wstork_wint <- subset(range_wstork, SEASONAL == c("1", "3"))
range_wstork_breed <- subset(range_wstork, SEASONAL == c("1", "2"))

### climate & other data ###
diurnalmean <- raster("./variables/chelsa/diurnalmean.tif")
iso <- raster("./variables/chelsa/iso.tif")
prec <- raster("./variables/chelsa/prec.tif")
precCQ <- raster("./variables/chelsa/precCQ.tif")
precDM <- raster("./variables/chelsa/precDM.tif")
precDQ <- raster("./variables/chelsa/precDQ.tif")
precseas <- raster("./variables/chelsa/precseas.tif")
precWaQ <- raster("./variables/chelsa/precWaQ.tif")
precWeM <- raster("./variables/chelsa/precWeM.tif")
precWeQ <- raster("./variables/chelsa/precWeQ.tif")
tarange <- raster("./variables/chelsa/tarange.tif")
tmax <- raster("./variables/chelsa/tmax.tif")
tmean <- raster("./variables/chelsa/tmean.tif")
tmeanCQ <- raster("./variables/chelsa/tmeanCQ.tif")
tmeanDQ <- raster("./variables/chelsa/tmeanDQ.tif")
tmeanWaQ <- raster("./variables/chelsa/tmeanWaQ.tif")
tmeanWeQ <- raster("./variables/chelsa/tmeanWeQ.tif")
tmin <- raster("./variables/chelsa/tmin.tif")
tseas <- raster("./variables/chelsa/tseas.tif")
ndvi_breeding <- raster("./variables/ndvi_2000_2015_breeding.tif")
ndvi_wintering <- raster("./variables/ndvi_2000_2015_wintering.tif")
ndvi <- raster("./variables/ndvi.tif")
treecover <- raster("./variables/treecover.tif")
cropscover <- raster("./variables/cropscover.tif")
grasscover <- raster("./variables/grasscover.tif")
shrubcover <- raster("./variables/shrubcover.tif")
precmean_breeding <- raster("./variables/chelsa/prec/precmean_breeding.tif")
precmean_wintering <- raster("./variables/chelsa/prec/precmean_wintering.tif")
tmax_breeding <- raster("./variables/chelsa/tmax/tmax_breeding.tif")
tmax_wintering <- raster("./variables/chelsa/tmax/tmax_wintering.tif")
tmean_breeding <- raster("./variables/chelsa/tmean/tmean_breeding.tif")
tmean_wintering <- raster("./variables/chelsa/tmean/tmean_wintering.tif")
tmin_breeding <- raster("./variables/chelsa/tmin/tmin_breeding.tif")
tmin_wintering <- raster("./variables/chelsa/tmin/tmin_wintering.tif")

### raster files ###
mask <- raster("./raster/mask.grd")

##################################################
# 5 - 2000_2019 - BACKGROUND DATA # Summer & Winter
##################################################

###---                  ---###
### 5.0 - Data Preparation ###
###---                  ---###
# Extract environmental data and raster cellnumbers for the species data
gbif_wstork_2000_2019_winter <- cbind(gbif_wstork_2000_2019_winter[,c('decimalLongitude','decimalLatitude')], 
                                      raster::extract(x = mask, 
                                                      y = data.frame(gbif_wstork_2000_2019_winter
                                                                     [,c('decimalLongitude','decimalLatitude')]), 
                                                      cellnumbers=T ))
gbif_wstork_2000_2019_summer <- cbind(gbif_wstork_2000_2019_summer[,c('decimalLongitude','decimalLatitude')], 
                                      raster::extract(x = mask, 
                                                      y = data.frame(gbif_wstork_2000_2019_summer
                                                                     [,c('decimalLongitude','decimalLatitude')]), 
                                                      cellnumbers=T ))

# Removing of rows with duplicate cellnumbers
gbif_wstork_2000_2019_winter <- gbif_wstork_2000_2019_winter[!duplicated(gbif_wstork_2000_2019_winter$cells),]
gbif_wstork_2000_2019_summer <- gbif_wstork_2000_2019_summer[!duplicated(gbif_wstork_2000_2019_summer$cells),]

# Removing everything else than the coordinates
gbif_wstork_2000_2019_winter <- gbif_wstork_2000_2019_winter[,c('decimalLongitude','decimalLatitude')]
gbif_wstork_2000_2019_summer <- gbif_wstork_2000_2019_summer[,c('decimalLongitude','decimalLatitude')]



   ###---                                               ---###
   ### 5.1 - Random selection of points within study area ###
   ###---       method: Damaris Zurell (SDM-course)     ---###
## Winter
# Randomly select background data but excluding presence locations
gbif_wstork_2000_2019_winter_bg_rand_points <- randomPoints(mask, n = nrow(gbif_wstork_2000_2019_winter))

## Summer
# Randomly select background data but excluding presence locations
gbif_wstork_2000_2019_summer_bg_rand_points <- randomPoints(mask, n = nrow(gbif_wstork_2000_2019_summer))

gc()

   ###---                                                      ---###
   ### 5.2 - Random selection of points outside of presence area ###
   ###---       method: Damaris Zurell (SDM-course)            ---###
# Extract environmental data and raster cellnumbers for the species data
gbif_wstork_2000_2019_winter_bg_buffer <- cbind(gbif_wstork_2000_2019_winter[,c('decimalLongitude','decimalLatitude')], 
                                                raster::extract(x = mask, y = data.frame(gbif_wstork_2000_2019_winter
                                                                                         [,c('decimalLongitude','decimalLatitude')]), cellnumbers=T ))
gbif_wstork_2000_2019_summer_bg_buffer <- cbind(gbif_wstork_2000_2019_summer[,c('decimalLongitude','decimalLatitude')], 
                                                raster::extract(x = mask, y = data.frame(gbif_wstork_2000_2019_summer
                                                                                         [,c('decimalLongitude','decimalLatitude')]), cellnumbers=T ))
# Removing of rows with duplicate cellnumbers
gbif_wstork_2000_2019_winter_bg_buffer <- gbif_wstork_2000_2019_winter_bg_buffer[!duplicated(gbif_wstork_2000_2019_winter_bg_buffer$cells),]
gbif_wstork_2000_2019_summer_bg_buffer <- gbif_wstork_2000_2019_summer_bg_buffer[!duplicated(gbif_wstork_2000_2019_summer_bg_buffer$cells),]
# Removing everything else than the coordinates
gbif_wstork_2000_2019_winter_bg_buffer <- gbif_wstork_2000_2019_winter_bg_buffer[,c('decimalLongitude','decimalLatitude')]
gbif_wstork_2000_2019_summer_bg_buffer <- gbif_wstork_2000_2019_summer_bg_buffer[,c('decimalLongitude','decimalLatitude')]


### Winter
coordinates(gbif_wstork_2000_2019_winter_bg_buffer) <- ~decimalLongitude + decimalLatitude
projection(gbif_wstork_2000_2019_winter_bg_buffer) <- CRS('+proj=longlat +datum=WGS84')
# placing buffer of 200km radius around our presence points
gbif_wstork_2000_2019_winter_bg_buffer <- buffer(gbif_wstork_2000_2019_winter_bg_buffer, width=200000)
# setting all raster cells outside of the buffer to NA
x <- mask(mask, gbif_wstork_2000_2019_winter_bg_buffer)
mask2 <- mask
values(mask2)[values(x)==0 & 
                 !is.na(values(x))] <- NA
gbif_wstork_2000_2019_winter_bg_buffer_points <- randomPoints(mask2, n = nrow(gbif_wstork_2000_2019_winter))
# remove obsolete data
rm(x, mask2)
gc()

### Summer
coordinates(gbif_wstork_2000_2019_summer_bg_buffer) <- ~decimalLongitude + decimalLatitude
projection(gbif_wstork_2000_2019_summer_bg_buffer) <- CRS('+proj=longlat +datum=WGS84')
# placing buffer of 200km radius around our presence points
gbif_wstork_2000_2019_summer_bg_buffer <- buffer(gbif_wstork_2000_2019_summer_bg_buffer, width=200000)
# setting all raster cells outside of the buffer to NA
x <- mask(mask, gbif_wstork_2000_2019_summer_bg_buffer)
mask2 <- mask
values(mask2)[values(x)==0 & 
                 !is.na(values(x))] <- NA
gbif_wstork_2000_2019_summer_bg_buffer_points <- randomPoints(mask2, n = nrow(gbif_wstork_2000_2019_summer))
# remove obsolete data
rm(x, mask2)
gc()


   ###---                                                       ---###
   ### 5.3 - Random selection of points outside of Birdlife range ###
   ###---       method: Damaris Zurell (SDM-course)             ---###
### Winter
# setting all raster cells outside of the range to NA
x <- mask(mask, range_wstork_wint)
mask2 <- mask
values(mask2)[values(x)==0 & 
                !is.na(values(x))] <- NA
gbif_wstork_2000_2019_winter_bg_range_points <- randomPoints(mask2, n = nrow(gbif_wstork_2000_2019_winter)) # no of presence points = bg points
# remove obsolete data
rm(x, mask2)


### Summer
# setting all raster cells outside of the range to NA
x <- mask(mask, range_wstork_breed)
mask2 <- mask
values(mask2)[values(x)==0 & 
                !is.na(values(x))] <- NA
gbif_wstork_2000_2019_summer_bg_range_points <- randomPoints(mask2, n = nrow(gbif_wstork_2000_2019_summer)) # no of presence points = bg points
# remove obsolete data
rm(x, mask2)


###---        ---###
### 5.2 Plotting ###
###---        ---###

### Winter
## Presence + Random BG
# Mask
#plot(mask, col="grey", legend=F)
# Presence
#points(gbif_wstork_2000_2019_winter, pch=19, col="green", cex=0.3)
# Background - random
#points(gbif_wstork_2000_2019_winter_bg_rand, pch=19, cex=0.2, col="purple")


## Birdlife Range + BG outside of Range
# Mask
#plot(mask, col="grey", legend=F)
# Birdlife Range
#plot(range_wstork_wint, add=T, col="blue", xlim = c(-25:52))
# Background - Range Points
#points(gbif_wstork_2000_2019_winter_bg_range_points, col="purple", pch=19, cex=0.2)


## Presence + 200km Buffer + BG outside of Buffer
# Mask
#plot(mask, col="grey", legend=F)
# Background - Buffer
#plot(gbif_wstork_2000_2019_winter_bg_buffer, col="red", add=T)
# Presence
#points(gbif_wstork_2000_2019_winter, pch=19, col="green", cex=0.3)
# Background - Buffer points
#points(gbif_wstork_2000_2019_winter_bg_buffer_points, pch=19, cex=0.2, col="purple")




### Summer
## Presence + Random BG
# Mask
#plot(mask, col="grey", legend=F)
# Presence
#points(gbif_wstork_2000_2019_summer, pch=19, col="green", cex=0.3)
# Background - random
#points(gbif_wstork_2000_2019_summer_bg_rand, pch=19, cex=0.2, col="purple")


## Birdlife Range + BG outside of Range
# Mask
#plot(mask, col="grey", legend=F)
# Birdlife Range
#plot(range_wstork_breed, add=T, col="blue", xlim = c(-25:52))
# Background - Range Points
#points(gbif_wstork_2000_2019_summer_bg_range_points, col="purple", pch=19, cex=0.2)


## Presence + 200km Buffer + BG outside of Buffer
# Mask
#plot(mask, col="grey", legend=F)
# Background - Buffer
#plot(gbif_wstork_2000_2019_summer_bg_buffer, col="red", add=T)
# Presence
#points(gbif_wstork_2000_2019_summer, pch=19, col="green", cex=0.3)
# Background - Buffer points
#points(gbif_wstork_2000_2019_summer_bg_buffer_points, pch=19, cex=0.2, col="purple")

##################################################
# RANDOM BG - Pseudo absence
##################################################
  ###-----------------------------------------------
  # 6 - JOIN PRESENCE/ABSENCE AND BIOVARIABLES
  ###-----------------------------------------------

###---                        ---###
### 6.1a - Joining Data - Winter ###
###---                        ---###

# prepare the presences data to contain a column indicating 1 for presence
gbif_wstork_2000_2019_winter_rand <- data.frame(gbif_wstork_2000_2019_winter, occ=1)
# Second, we make sure the background data have the same columns, and indicate 0 for absence.
gbif_wstork_2000_2019_winter_bg_rand <- data.frame(gbif_wstork_2000_2019_winter_bg_rand_points)
names(gbif_wstork_2000_2019_winter_bg_rand) <-  c('decimalLongitude','decimalLatitude')
gbif_wstork_2000_2019_winter_bg_rand$occ <-  0
# Third, we bind these two data sets
gbif_wstork_2000_2019_winter_rand <- rbind(gbif_wstork_2000_2019_winter_rand, gbif_wstork_2000_2019_winter_bg_rand)

### CLIMATE SEAS
# tmean
gbif_wstork_2000_2019_winter_rand_climate_seas <- cbind(gbif_wstork_2000_2019_winter_rand, 
                                                          raster::extract(x = tmean_wintering, y = gbif_wstork_2000_2019_winter_rand[,c('decimalLongitude','decimalLatitude')], 
                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_rand_climate_seas$cells),]
gbif_wstork_2000_2019_winter_rand_climate_seas <- subset(gbif_wstork_2000_2019_winter_rand_climate_seas, select = -c(cells) )
# tmax
gbif_wstork_2000_2019_winter_rand_climate_seas <- cbind(gbif_wstork_2000_2019_winter_rand_climate_seas, 
                                                          raster::extract(x = tmax_wintering, y = gbif_wstork_2000_2019_winter_rand_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_rand_climate_seas$cells),]
gbif_wstork_2000_2019_winter_rand_climate_seas <- subset(gbif_wstork_2000_2019_winter_rand_climate_seas, select = -c(cells) )
# tmin
gbif_wstork_2000_2019_winter_rand_climate_seas <- cbind(gbif_wstork_2000_2019_winter_rand_climate_seas, 
                                                          raster::extract(x = tmin_wintering, y = gbif_wstork_2000_2019_winter_rand_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_rand_climate_seas$cells),]
gbif_wstork_2000_2019_winter_rand_climate_seas <- subset(gbif_wstork_2000_2019_winter_rand_climate_seas, select = -c(cells) )
# prec
gbif_wstork_2000_2019_winter_rand_climate_seas <- cbind(gbif_wstork_2000_2019_winter_rand_climate_seas, 
                                                          raster::extract(x = precmean_wintering, y = gbif_wstork_2000_2019_winter_rand_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_rand_climate_seas$cells),]
gbif_wstork_2000_2019_winter_rand_climate_seas <- subset(gbif_wstork_2000_2019_winter_rand_climate_seas, select = -c(cells) )
# ndvi
gbif_wstork_2000_2019_winter_rand_climate_seas <- cbind(gbif_wstork_2000_2019_winter_rand_climate_seas, 
                                                          raster::extract(x = ndvi_wintering, y = gbif_wstork_2000_2019_winter_rand_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_rand_climate_seas$cells),]
gbif_wstork_2000_2019_winter_rand_climate_seas <- subset(gbif_wstork_2000_2019_winter_rand_climate_seas, select = -c(cells) )

### CLIMATE
# tmean
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand, raster::extract(x = tmean, y = gbif_wstork_2000_2019_winter_rand[,c('decimalLongitude','decimalLatitude')], 
                                                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# diurnalmean
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = diurnalmean, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# iso
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = iso, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# tseas
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = tseas, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# tmax
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = tmax, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# tmin
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = tmin, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# tarange
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = tarange, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# tmeanWeQ
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = tmeanWeQ, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# tmeanDQ
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = tmeanDQ, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# tmeanWaQ
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = tmeanWaQ, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# tmeanCQ
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = tmeanCQ, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# prec
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = prec, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# precWeM
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = precWeM, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# precDM
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = precDM, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# precseas
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = precseas, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# precWeQ
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = precWeQ, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# precDQ
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = precDQ, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# precWaQ
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = precWaQ, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )
# precCQ
gbif_wstork_2000_2019_winter_rand_climate <- cbind(gbif_wstork_2000_2019_winter_rand_climate, raster::extract(x = precCQ, y = gbif_wstork_2000_2019_winter_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate[!duplicated(gbif_wstork_2000_2019_winter_rand_climate$cells),]
gbif_wstork_2000_2019_winter_rand_climate <- subset(gbif_wstork_2000_2019_winter_rand_climate, select = -c(cells) )

### LAND COVER
# join with ndvi data
#gbif_wstork_2000_2019_winter_rand_landcover <- cbind(gbif_wstork_2000_2019_winter_rand, raster::extract(x = ndvi, y = gbif_wstork_2000_2019_winter_rand[,c('decimalLongitude','decimalLatitude')], 
#                                                                                                        cellnumbers=T) )
#gbif_wstork_2000_2019_winter_rand_landcover <- gbif_wstork_2000_2019_winter_rand_landcover[!duplicated(gbif_wstork_2000_2019_winter_rand_landcover$cells),]
#gbif_wstork_2000_2019_winter_rand_landcover <- subset(gbif_wstork_2000_2019_winter_rand_landcover, select = -c(cells) )
# join with treecover data
#gbif_wstork_2000_2019_winter_rand_landcover <- cbind(gbif_wstork_2000_2019_winter_rand_landcover, raster::extract(x = treecover, y = gbif_wstork_2000_2019_winter_rand_landcover[,c('decimalLongitude','decimalLatitude')], 
#                                                                                                                  cellnumbers=T) )
#gbif_wstork_2000_2019_winter_rand_landcover <- gbif_wstork_2000_2019_winter_rand_landcover[!duplicated(gbif_wstork_2000_2019_winter_rand_landcover$cells),]
#gbif_wstork_2000_2019_winter_rand_landcover <- subset(gbif_wstork_2000_2019_winter_rand_landcover, select = -c(cells) )
# join with treecover data
gbif_wstork_2000_2019_winter_rand_landcover <- cbind(gbif_wstork_2000_2019_winter_rand, raster::extract(x = treecover, y = gbif_wstork_2000_2019_winter_rand[,c('decimalLongitude','decimalLatitude')], 
                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_landcover <- gbif_wstork_2000_2019_winter_rand_landcover[!duplicated(gbif_wstork_2000_2019_winter_rand_landcover$cells),]
gbif_wstork_2000_2019_winter_rand_landcover <- subset(gbif_wstork_2000_2019_winter_rand_landcover, select = -c(cells) )
# join with cropscover data
gbif_wstork_2000_2019_winter_rand_landcover <- cbind(gbif_wstork_2000_2019_winter_rand_landcover, raster::extract(x = cropscover, y = gbif_wstork_2000_2019_winter_rand_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_landcover <- gbif_wstork_2000_2019_winter_rand_landcover[!duplicated(gbif_wstork_2000_2019_winter_rand_landcover$cells),]
gbif_wstork_2000_2019_winter_rand_landcover <- subset(gbif_wstork_2000_2019_winter_rand_landcover, select = -c(cells) )
# join with grasscover data
gbif_wstork_2000_2019_winter_rand_landcover <- cbind(gbif_wstork_2000_2019_winter_rand_landcover, raster::extract(x = grasscover, y = gbif_wstork_2000_2019_winter_rand_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_landcover <- gbif_wstork_2000_2019_winter_rand_landcover[!duplicated(gbif_wstork_2000_2019_winter_rand_landcover$cells),]
gbif_wstork_2000_2019_winter_rand_landcover <- subset(gbif_wstork_2000_2019_winter_rand_landcover, select = -c(cells) )
# join with shrubcover data
gbif_wstork_2000_2019_winter_rand_landcover <- cbind(gbif_wstork_2000_2019_winter_rand_landcover, raster::extract(x = shrubcover, y = gbif_wstork_2000_2019_winter_rand_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_winter_rand_landcover <- gbif_wstork_2000_2019_winter_rand_landcover[!duplicated(gbif_wstork_2000_2019_winter_rand_landcover$cells),]
gbif_wstork_2000_2019_winter_rand_landcover <- subset(gbif_wstork_2000_2019_winter_rand_landcover, select = -c(cells) )

###---                        ---###
### 6.1b - Joining Data - Summer ###
###---                        ---###

# prepare the presences data to contain a column indicating 1 for presence
gbif_wstork_2000_2019_summer_rand <- data.frame(gbif_wstork_2000_2019_summer, occ=1)
# Second, we make sure the background data have the same columns, and indicate 0 for absence.
gbif_wstork_2000_2019_summer_bg_rand <- data.frame(gbif_wstork_2000_2019_summer_bg_rand_points)
names(gbif_wstork_2000_2019_summer_bg_rand) <-  c('decimalLongitude','decimalLatitude')
gbif_wstork_2000_2019_summer_bg_rand$occ <-  0
# Third, we bind these two data sets
gbif_wstork_2000_2019_summer_rand <- rbind(gbif_wstork_2000_2019_summer_rand, gbif_wstork_2000_2019_summer_bg_rand)

### CLIMATE SEAS
# tmean
gbif_wstork_2000_2019_summer_rand_climate_seas <- cbind(gbif_wstork_2000_2019_summer_rand, raster::extract(x = tmean_breeding, y = gbif_wstork_2000_2019_summer_rand[,c('decimalLongitude','decimalLatitude')], 
                                                                                                               cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_rand_climate_seas$cells),]
gbif_wstork_2000_2019_summer_rand_climate_seas <- subset(gbif_wstork_2000_2019_summer_rand_climate_seas, select = -c(cells) )
# tmax
gbif_wstork_2000_2019_summer_rand_climate_seas <- cbind(gbif_wstork_2000_2019_summer_rand_climate_seas, raster::extract(x = tmax_breeding, y = gbif_wstork_2000_2019_summer_rand_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_rand_climate_seas$cells),]
gbif_wstork_2000_2019_summer_rand_climate_seas <- subset(gbif_wstork_2000_2019_summer_rand_climate_seas, select = -c(cells) )
# tmin
gbif_wstork_2000_2019_summer_rand_climate_seas <- cbind(gbif_wstork_2000_2019_summer_rand_climate_seas, raster::extract(x = tmin_breeding, y = gbif_wstork_2000_2019_summer_rand_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_rand_climate_seas$cells),]
gbif_wstork_2000_2019_summer_rand_climate_seas <- subset(gbif_wstork_2000_2019_summer_rand_climate_seas, select = -c(cells) )
# prec
gbif_wstork_2000_2019_summer_rand_climate_seas <- cbind(gbif_wstork_2000_2019_summer_rand_climate_seas, raster::extract(x = precmean_breeding, y = gbif_wstork_2000_2019_summer_rand_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_rand_climate_seas$cells),]
gbif_wstork_2000_2019_summer_rand_climate_seas <- subset(gbif_wstork_2000_2019_summer_rand_climate_seas, select = -c(cells) )
# ndvi
gbif_wstork_2000_2019_summer_rand_climate_seas <- cbind(gbif_wstork_2000_2019_summer_rand_climate_seas, 
                                                          raster::extract(x = ndvi_breeding, y = gbif_wstork_2000_2019_summer_rand_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_rand_climate_seas$cells),]
gbif_wstork_2000_2019_summer_rand_climate_seas <- subset(gbif_wstork_2000_2019_summer_rand_climate_seas, select = -c(cells) )


### CLIMATE
# tmean
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand, raster::extract(x = tmean, y = gbif_wstork_2000_2019_summer_rand[,c('decimalLongitude','decimalLatitude')], 
                                                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# diurnalmean
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = diurnalmean, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# iso
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = iso, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# tseas
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = tseas, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# tmax
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = tmax, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# tmin
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = tmin, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# tarange
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = tarange, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# tmeanWeQ
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = tmeanWeQ, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# tmeanDQ
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = tmeanDQ, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# tmeanWaQ
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = tmeanWaQ, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# tmeanCQ
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = tmeanCQ, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# prec
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = prec, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# precWeM
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = precWeM, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# precDM
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = precDM, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# precseas
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = precseas, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# precWeQ
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = precWeQ, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# precDQ
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = precDQ, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# precWaQ
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = precWaQ, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )
# precCQ
gbif_wstork_2000_2019_summer_rand_climate <- cbind(gbif_wstork_2000_2019_summer_rand_climate, raster::extract(x = precCQ, y = gbif_wstork_2000_2019_summer_rand_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate[!duplicated(gbif_wstork_2000_2019_summer_rand_climate$cells),]
gbif_wstork_2000_2019_summer_rand_climate <- subset(gbif_wstork_2000_2019_summer_rand_climate, select = -c(cells) )

### LAND COVER
# join with ndvi data
#gbif_wstork_2000_2019_summer_rand_landcover <- cbind(gbif_wstork_2000_2019_summer_rand, raster::extract(x = ndvi, y = gbif_wstork_2000_2019_summer_rand[,c('decimalLongitude','decimalLatitude')], 
#                                                                                                        cellnumbers=T) )
#gbif_wstork_2000_2019_summer_rand_landcover <- gbif_wstork_2000_2019_summer_rand_landcover[!duplicated(gbif_wstork_2000_2019_summer_rand_landcover$cells),]
#gbif_wstork_2000_2019_summer_rand_landcover <- subset(gbif_wstork_2000_2019_summer_rand_landcover, select = -c(cells) )
# join with treecover data
#gbif_wstork_2000_2019_summer_rand_landcover <- cbind(gbif_wstork_2000_2019_summer_rand_landcover, raster::extract(x = treecover, y = gbif_wstork_2000_2019_summer_rand_landcover[,c('decimalLongitude','decimalLatitude')], 
#                                                                                                                  cellnumbers=T) )
#gbif_wstork_2000_2019_summer_rand_landcover <- gbif_wstork_2000_2019_summer_rand_landcover[!duplicated(gbif_wstork_2000_2019_summer_rand_landcover$cells),]
#gbif_wstork_2000_2019_summer_rand_landcover <- subset(gbif_wstork_2000_2019_summer_rand_landcover, select = -c(cells) )
# join with treecover data
gbif_wstork_2000_2019_summer_rand_landcover <- cbind(gbif_wstork_2000_2019_summer_rand, raster::extract(x = treecover, y = gbif_wstork_2000_2019_summer_rand[,c('decimalLongitude','decimalLatitude')], 
                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_landcover <- gbif_wstork_2000_2019_summer_rand_landcover[!duplicated(gbif_wstork_2000_2019_summer_rand_landcover$cells),]
gbif_wstork_2000_2019_summer_rand_landcover <- subset(gbif_wstork_2000_2019_summer_rand_landcover, select = -c(cells) )
# join with cropscover data
gbif_wstork_2000_2019_summer_rand_landcover <- cbind(gbif_wstork_2000_2019_summer_rand_landcover, raster::extract(x = cropscover, y = gbif_wstork_2000_2019_summer_rand_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_landcover <- gbif_wstork_2000_2019_summer_rand_landcover[!duplicated(gbif_wstork_2000_2019_summer_rand_landcover$cells),]
gbif_wstork_2000_2019_summer_rand_landcover <- subset(gbif_wstork_2000_2019_summer_rand_landcover, select = -c(cells) )
# join with grasscover data
gbif_wstork_2000_2019_summer_rand_landcover <- cbind(gbif_wstork_2000_2019_summer_rand_landcover, raster::extract(x = grasscover, y = gbif_wstork_2000_2019_summer_rand_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_landcover <- gbif_wstork_2000_2019_summer_rand_landcover[!duplicated(gbif_wstork_2000_2019_summer_rand_landcover$cells),]
gbif_wstork_2000_2019_summer_rand_landcover <- subset(gbif_wstork_2000_2019_summer_rand_landcover, select = -c(cells) )
# join with shrubcover data
gbif_wstork_2000_2019_summer_rand_landcover <- cbind(gbif_wstork_2000_2019_summer_rand_landcover, raster::extract(x = shrubcover, y = gbif_wstork_2000_2019_summer_rand_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_summer_rand_landcover <- gbif_wstork_2000_2019_summer_rand_landcover[!duplicated(gbif_wstork_2000_2019_summer_rand_landcover$cells),]
gbif_wstork_2000_2019_summer_rand_landcover <- subset(gbif_wstork_2000_2019_summer_rand_landcover, select = -c(cells) )


  ###-----------------------------------------------
  # 7 - RENAMEING environmental data rows 
  ###-----------------------------------------------
### Winter 
# remove NAs
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas %>% filter(!is.na(tmean_wintering))
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas %>% filter(!is.na(tmax_wintering))
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas %>% filter(!is.na(tmin_wintering))
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas %>% filter(!is.na(precmean_wintering))
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas %>% filter(!is.na(ndvi_2000_2015_wintering))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(tmean))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(diurnalmean))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(iso))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(tseas))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(tmax))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(tmin))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(tarange))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(tmeanWeQ))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(tmeanDQ))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(tmeanWaQ))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(tmeanCQ))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(prec))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(precWeM))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(precDM))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(precseas))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(precWeQ))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(precDQ))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(precWaQ))
gbif_wstork_2000_2019_winter_rand_climate <- gbif_wstork_2000_2019_winter_rand_climate %>% filter(!is.na(precCQ))
gbif_wstork_2000_2019_winter_rand_landcover <- gbif_wstork_2000_2019_winter_rand_landcover %>% filter(!is.na(treecover))
gbif_wstork_2000_2019_winter_rand_landcover <- gbif_wstork_2000_2019_winter_rand_landcover %>% filter(!is.na(cropscover))
gbif_wstork_2000_2019_winter_rand_landcover <- gbif_wstork_2000_2019_winter_rand_landcover %>% filter(!is.na(grasscover))
gbif_wstork_2000_2019_winter_rand_landcover <- gbif_wstork_2000_2019_winter_rand_landcover %>% filter(!is.na(shrubcover))
# rename seas col names
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas %>% rename(tmean = tmean_wintering)
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas %>% rename(tmax = tmax_wintering)
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas %>% rename(tmin = tmin_wintering)
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas %>% rename(prec = precmean_wintering)
gbif_wstork_2000_2019_winter_rand_climate_seas <- gbif_wstork_2000_2019_winter_rand_climate_seas %>% rename(ndvi = ndvi_2000_2015_wintering)

### Summer
# remove NAs
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas %>% filter(!is.na(tmean_breeding))
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas %>% filter(!is.na(tmax_breeding))
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas %>% filter(!is.na(tmin_breeding))
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas %>% filter(!is.na(precmean_breeding))
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas %>% filter(!is.na(ndvi_2000_2015_breeding))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(tmean))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(diurnalmean))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(iso))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(tseas))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(tmax))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(tmin))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(tarange))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(tmeanWeQ))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(tmeanDQ))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(tmeanWaQ))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(tmeanCQ))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(prec))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(precWeM))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(precDM))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(precseas))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(precWeQ))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(precDQ))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(precWaQ))
gbif_wstork_2000_2019_summer_rand_climate <- gbif_wstork_2000_2019_summer_rand_climate %>% filter(!is.na(precCQ))
gbif_wstork_2000_2019_summer_rand_landcover <- gbif_wstork_2000_2019_summer_rand_landcover %>% filter(!is.na(treecover))
gbif_wstork_2000_2019_summer_rand_landcover <- gbif_wstork_2000_2019_summer_rand_landcover %>% filter(!is.na(cropscover))
gbif_wstork_2000_2019_summer_rand_landcover <- gbif_wstork_2000_2019_summer_rand_landcover %>% filter(!is.na(grasscover))
gbif_wstork_2000_2019_summer_rand_landcover <- gbif_wstork_2000_2019_summer_rand_landcover %>% filter(!is.na(shrubcover))
# rename seas col names
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas %>% rename(tmean = tmean_breeding)
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas %>% rename(tmax = tmax_breeding)
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas %>% rename(tmin = tmin_breeding)
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas %>% rename(prec = precmean_breeding)
gbif_wstork_2000_2019_summer_rand_climate_seas <- gbif_wstork_2000_2019_summer_rand_climate_seas %>% rename(ndvi = ndvi_2000_2015_breeding)

save(gbif_wstork_2000_2019_winter_rand_climate_seas, file = "./analysis/random/gbif_wstork_2000_2019_winter_rand_climate_seas.Rdata")
save(gbif_wstork_2000_2019_winter_rand_climate, file = "./analysis/random/gbif_wstork_2000_2019_winter_rand_climate.Rdata")
save(gbif_wstork_2000_2019_winter_rand_landcover, file = "./analysis/random/gbif_wstork_2000_2019_winter_rand_landcover.Rdata")
save(gbif_wstork_2000_2019_summer_rand_climate_seas, file = "./analysis/random/gbif_wstork_2000_2019_summer_rand_climate_seas.Rdata")
save(gbif_wstork_2000_2019_summer_rand_climate, file = "./analysis/random/gbif_wstork_2000_2019_summer_rand_climate.Rdata")
save(gbif_wstork_2000_2019_summer_rand_landcover, file = "./analysis/random/gbif_wstork_2000_2019_summer_rand_landcover.Rdata")



##################################################
# BUFFER BG - Pseudo absence
##################################################
  ###-----------------------------------------------
  # 6 - JOIN PRESENCE/ABSENCE AND BIOVARIABLES
  ###-----------------------------------------------

###---                        ---###
### 6.1a - Joining Data - Winter ###
###---                        ---###

# prepare the presences data to contain a column indicating 1 for presence
gbif_wstork_2000_2019_winter_buffer <- data.frame(gbif_wstork_2000_2019_winter, occ=1)
# Second, we make sure the background data have the same columns, and indicate 0 for absence.
gbif_wstork_2000_2019_winter_bg_buffer <- data.frame(gbif_wstork_2000_2019_winter_bg_buffer_points)
names(gbif_wstork_2000_2019_winter_bg_buffer) <-  c('decimalLongitude','decimalLatitude')
gbif_wstork_2000_2019_winter_bg_buffer$occ <-  0
# Third, we bind these two data sets
gbif_wstork_2000_2019_winter_buffer <- rbind(gbif_wstork_2000_2019_winter_buffer, gbif_wstork_2000_2019_winter_bg_buffer)

### CLIMATE SEAS
# tmean
gbif_wstork_2000_2019_winter_buffer_climate_seas <- cbind(gbif_wstork_2000_2019_winter_buffer, 
                                                          raster::extract(x = tmean_wintering, y = gbif_wstork_2000_2019_winter_buffer[,c('decimalLongitude','decimalLatitude')], 
                                                                                                               cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate_seas$cells),]
gbif_wstork_2000_2019_winter_buffer_climate_seas <- subset(gbif_wstork_2000_2019_winter_buffer_climate_seas, select = -c(cells) )
# tmax
gbif_wstork_2000_2019_winter_buffer_climate_seas <- cbind(gbif_wstork_2000_2019_winter_buffer_climate_seas, 
                                                          raster::extract(x = tmax_wintering, y = gbif_wstork_2000_2019_winter_buffer_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate_seas$cells),]
gbif_wstork_2000_2019_winter_buffer_climate_seas <- subset(gbif_wstork_2000_2019_winter_buffer_climate_seas, select = -c(cells) )
# tmin
gbif_wstork_2000_2019_winter_buffer_climate_seas <- cbind(gbif_wstork_2000_2019_winter_buffer_climate_seas, 
                                                          raster::extract(x = tmin_wintering, y = gbif_wstork_2000_2019_winter_buffer_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate_seas$cells),]
gbif_wstork_2000_2019_winter_buffer_climate_seas <- subset(gbif_wstork_2000_2019_winter_buffer_climate_seas, select = -c(cells) )
# prec
gbif_wstork_2000_2019_winter_buffer_climate_seas <- cbind(gbif_wstork_2000_2019_winter_buffer_climate_seas, 
                                                          raster::extract(x = precmean_wintering, y = gbif_wstork_2000_2019_winter_buffer_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate_seas$cells),]
gbif_wstork_2000_2019_winter_buffer_climate_seas <- subset(gbif_wstork_2000_2019_winter_buffer_climate_seas, select = -c(cells) )
# ndvi
gbif_wstork_2000_2019_winter_buffer_climate_seas <- cbind(gbif_wstork_2000_2019_winter_buffer_climate_seas, 
                                                          raster::extract(x = ndvi_wintering, y = gbif_wstork_2000_2019_winter_buffer_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate_seas$cells),]
gbif_wstork_2000_2019_winter_buffer_climate_seas <- subset(gbif_wstork_2000_2019_winter_buffer_climate_seas, select = -c(cells) )

### CLIMATE
# tmean
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer, raster::extract(x = tmean, y = gbif_wstork_2000_2019_winter_buffer[,c('decimalLongitude','decimalLatitude')], 
                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# diurnalmean
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = diurnalmean, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# iso
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = iso, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# tseas
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = tseas, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# tmax
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = tmax, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# tmin
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = tmin, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# tarange
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = tarange, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# tmeanWeQ
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = tmeanWeQ, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# tmeanDQ
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = tmeanDQ, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# tmeanWaQ
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = tmeanWaQ, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# tmeanCQ
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = tmeanCQ, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# prec
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = prec, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# precWeM
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = precWeM, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# precDM
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = precDM, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# precseas
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = precseas, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# precWeQ
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = precWeQ, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# precDQ
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = precDQ, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# precWaQ
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = precWaQ, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )
# precCQ
gbif_wstork_2000_2019_winter_buffer_climate <- cbind(gbif_wstork_2000_2019_winter_buffer_climate, raster::extract(x = precCQ, y = gbif_wstork_2000_2019_winter_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate[!duplicated(gbif_wstork_2000_2019_winter_buffer_climate$cells),]
gbif_wstork_2000_2019_winter_buffer_climate <- subset(gbif_wstork_2000_2019_winter_buffer_climate, select = -c(cells) )

### LAND COVER
# join with ndvi data
#gbif_wstork_2000_2019_winter_buffer_landcover <- cbind(gbif_wstork_2000_2019_winter_buffer, raster::extract(x = ndvi, y = gbif_wstork_2000_2019_winter_buffer[,c('decimalLongitude','decimalLatitude')], 
#                                                                                                        cellnumbers=T) )
#gbif_wstork_2000_2019_winter_buffer_landcover <- gbif_wstork_2000_2019_winter_buffer_landcover[!duplicated(gbif_wstork_2000_2019_winter_buffer_landcover$cells),]
#gbif_wstork_2000_2019_winter_buffer_landcover <- subset(gbif_wstork_2000_2019_winter_buffer_landcover, select = -c(cells) )
# join with treecover data
#gbif_wstork_2000_2019_winter_buffer_landcover <- cbind(gbif_wstork_2000_2019_winter_buffer_landcover, raster::extract(x = treecover, y = gbif_wstork_2000_2019_winter_buffer_landcover[,c('decimalLongitude','decimalLatitude')], 
#                                                                                                                  cellnumbers=T) )
#gbif_wstork_2000_2019_winter_buffer_landcover <- gbif_wstork_2000_2019_winter_buffer_landcover[!duplicated(gbif_wstork_2000_2019_winter_buffer_landcover$cells),]
#gbif_wstork_2000_2019_winter_buffer_landcover <- subset(gbif_wstork_2000_2019_winter_buffer_landcover, select = -c(cells) )
# join with treecover data
gbif_wstork_2000_2019_winter_buffer_landcover <- cbind(gbif_wstork_2000_2019_winter_buffer, raster::extract(x = treecover, y = gbif_wstork_2000_2019_winter_buffer[,c('decimalLongitude','decimalLatitude')], 
                                                                                                        cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_landcover <- gbif_wstork_2000_2019_winter_buffer_landcover[!duplicated(gbif_wstork_2000_2019_winter_buffer_landcover$cells),]
gbif_wstork_2000_2019_winter_buffer_landcover <- subset(gbif_wstork_2000_2019_winter_buffer_landcover, select = -c(cells) )
# join with cropscover data
gbif_wstork_2000_2019_winter_buffer_landcover <- cbind(gbif_wstork_2000_2019_winter_buffer_landcover, raster::extract(x = cropscover, y = gbif_wstork_2000_2019_winter_buffer_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_landcover <- gbif_wstork_2000_2019_winter_buffer_landcover[!duplicated(gbif_wstork_2000_2019_winter_buffer_landcover$cells),]
gbif_wstork_2000_2019_winter_buffer_landcover <- subset(gbif_wstork_2000_2019_winter_buffer_landcover, select = -c(cells) )
# join with grasscover data
gbif_wstork_2000_2019_winter_buffer_landcover <- cbind(gbif_wstork_2000_2019_winter_buffer_landcover, raster::extract(x = grasscover, y = gbif_wstork_2000_2019_winter_buffer_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_landcover <- gbif_wstork_2000_2019_winter_buffer_landcover[!duplicated(gbif_wstork_2000_2019_winter_buffer_landcover$cells),]
gbif_wstork_2000_2019_winter_buffer_landcover <- subset(gbif_wstork_2000_2019_winter_buffer_landcover, select = -c(cells) )
# join with shrubcover data
gbif_wstork_2000_2019_winter_buffer_landcover <- cbind(gbif_wstork_2000_2019_winter_buffer_landcover, raster::extract(x = shrubcover, y = gbif_wstork_2000_2019_winter_buffer_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_buffer_landcover <- gbif_wstork_2000_2019_winter_buffer_landcover[!duplicated(gbif_wstork_2000_2019_winter_buffer_landcover$cells),]
gbif_wstork_2000_2019_winter_buffer_landcover <- subset(gbif_wstork_2000_2019_winter_buffer_landcover, select = -c(cells) )

###---                        ---###
### 6.1b - Joining Data - Summer ###
###---                        ---###

# prepare the presences data to contain a column indicating 1 for presence
gbif_wstork_2000_2019_summer_buffer <- data.frame(gbif_wstork_2000_2019_summer, occ=1)
# Second, we make sure the background data have the same columns, and indicate 0 for absence.
gbif_wstork_2000_2019_summer_bg_buffer <- data.frame(gbif_wstork_2000_2019_summer_bg_buffer_points)
names(gbif_wstork_2000_2019_summer_bg_buffer) <-  c('decimalLongitude','decimalLatitude')
gbif_wstork_2000_2019_summer_bg_buffer$occ <-  0
# Third, we bind these two data sets
gbif_wstork_2000_2019_summer_buffer <- rbind(gbif_wstork_2000_2019_summer_buffer, gbif_wstork_2000_2019_summer_bg_buffer)

### CLIMATE SEAS
# tmean
gbif_wstork_2000_2019_summer_buffer_climate_seas <- cbind(gbif_wstork_2000_2019_summer_buffer, raster::extract(x = tmean_breeding, y = gbif_wstork_2000_2019_summer_buffer[,c('decimalLongitude','decimalLatitude')], 
                                                                                                               cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate_seas$cells),]
gbif_wstork_2000_2019_summer_buffer_climate_seas <- subset(gbif_wstork_2000_2019_summer_buffer_climate_seas, select = -c(cells) )
# tmax
gbif_wstork_2000_2019_summer_buffer_climate_seas <- cbind(gbif_wstork_2000_2019_summer_buffer_climate_seas, raster::extract(x = tmax_breeding, y = gbif_wstork_2000_2019_summer_buffer_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate_seas$cells),]
gbif_wstork_2000_2019_summer_buffer_climate_seas <- subset(gbif_wstork_2000_2019_summer_buffer_climate_seas, select = -c(cells) )
# tmin
gbif_wstork_2000_2019_summer_buffer_climate_seas <- cbind(gbif_wstork_2000_2019_summer_buffer_climate_seas, raster::extract(x = tmin_breeding, y = gbif_wstork_2000_2019_summer_buffer_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate_seas$cells),]
gbif_wstork_2000_2019_summer_buffer_climate_seas <- subset(gbif_wstork_2000_2019_summer_buffer_climate_seas, select = -c(cells) )
# prec
gbif_wstork_2000_2019_summer_buffer_climate_seas <- cbind(gbif_wstork_2000_2019_summer_buffer_climate_seas, raster::extract(x = precmean_breeding, y = gbif_wstork_2000_2019_summer_buffer_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate_seas$cells),]
gbif_wstork_2000_2019_summer_buffer_climate_seas <- subset(gbif_wstork_2000_2019_summer_buffer_climate_seas, select = -c(cells) )
# ndvi
gbif_wstork_2000_2019_summer_buffer_climate_seas <- cbind(gbif_wstork_2000_2019_summer_buffer_climate_seas, 
                                                          raster::extract(x = ndvi_breeding, y = gbif_wstork_2000_2019_summer_buffer_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate_seas$cells),]
gbif_wstork_2000_2019_summer_buffer_climate_seas <- subset(gbif_wstork_2000_2019_summer_buffer_climate_seas, select = -c(cells) )


### CLIMATE
# tmean
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer, raster::extract(x = tmean, y = gbif_wstork_2000_2019_summer_buffer[,c('decimalLongitude','decimalLatitude')], 
                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# diurnalmean
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = diurnalmean, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# iso
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = iso, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# tseas
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = tseas, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# tmax
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = tmax, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# tmin
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = tmin, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# tarange
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = tarange, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# tmeanWeQ
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = tmeanWeQ, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# tmeanDQ
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = tmeanDQ, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# tmeanWaQ
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = tmeanWaQ, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# tmeanCQ
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = tmeanCQ, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# prec
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = prec, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# precWeM
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = precWeM, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# precDM
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = precDM, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# precseas
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = precseas, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# precWeQ
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = precWeQ, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# precDQ
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = precDQ, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# precWaQ
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = precWaQ, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )
# precCQ
gbif_wstork_2000_2019_summer_buffer_climate <- cbind(gbif_wstork_2000_2019_summer_buffer_climate, raster::extract(x = precCQ, y = gbif_wstork_2000_2019_summer_buffer_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                              cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate[!duplicated(gbif_wstork_2000_2019_summer_buffer_climate$cells),]
gbif_wstork_2000_2019_summer_buffer_climate <- subset(gbif_wstork_2000_2019_summer_buffer_climate, select = -c(cells) )

### LAND COVER
# join with ndvi data
#gbif_wstork_2000_2019_summer_buffer_landcover <- cbind(gbif_wstork_2000_2019_summer_buffer, raster::extract(x = ndvi, y = gbif_wstork_2000_2019_summer_buffer[,c('decimalLongitude','decimalLatitude')], 
#                                                                                                        cellnumbers=T) )
#gbif_wstork_2000_2019_summer_buffer_landcover <- gbif_wstork_2000_2019_summer_buffer_landcover[!duplicated(gbif_wstork_2000_2019_summer_buffer_landcover$cells),]
#gbif_wstork_2000_2019_summer_buffer_landcover <- subset(gbif_wstork_2000_2019_summer_buffer_landcover, select = -c(cells) )
# join with treecover data
#gbif_wstork_2000_2019_summer_buffer_landcover <- cbind(gbif_wstork_2000_2019_summer_buffer_landcover, raster::extract(x = treecover, y = gbif_wstork_2000_2019_summer_buffer_landcover[,c('decimalLongitude','decimalLatitude')], 
#                                                                                                                  cellnumbers=T) )
#gbif_wstork_2000_2019_summer_buffer_landcover <- gbif_wstork_2000_2019_summer_buffer_landcover[!duplicated(gbif_wstork_2000_2019_summer_buffer_landcover$cells),]
#gbif_wstork_2000_2019_summer_buffer_landcover <- subset(gbif_wstork_2000_2019_summer_buffer_landcover, select = -c(cells) )
# join with treecover data
gbif_wstork_2000_2019_summer_buffer_landcover <- cbind(gbif_wstork_2000_2019_summer_buffer, raster::extract(x = treecover, y = gbif_wstork_2000_2019_summer_buffer[,c('decimalLongitude','decimalLatitude')], 
                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_landcover <- gbif_wstork_2000_2019_summer_buffer_landcover[!duplicated(gbif_wstork_2000_2019_summer_buffer_landcover$cells),]
gbif_wstork_2000_2019_summer_buffer_landcover <- subset(gbif_wstork_2000_2019_summer_buffer_landcover, select = -c(cells) )
# join with cropscover data
gbif_wstork_2000_2019_summer_buffer_landcover <- cbind(gbif_wstork_2000_2019_summer_buffer_landcover, raster::extract(x = cropscover, y = gbif_wstork_2000_2019_summer_buffer_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_landcover <- gbif_wstork_2000_2019_summer_buffer_landcover[!duplicated(gbif_wstork_2000_2019_summer_buffer_landcover$cells),]
gbif_wstork_2000_2019_summer_buffer_landcover <- subset(gbif_wstork_2000_2019_summer_buffer_landcover, select = -c(cells) )
# join with grasscover data
gbif_wstork_2000_2019_summer_buffer_landcover <- cbind(gbif_wstork_2000_2019_summer_buffer_landcover, raster::extract(x = grasscover, y = gbif_wstork_2000_2019_summer_buffer_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_landcover <- gbif_wstork_2000_2019_summer_buffer_landcover[!duplicated(gbif_wstork_2000_2019_summer_buffer_landcover$cells),]
gbif_wstork_2000_2019_summer_buffer_landcover <- subset(gbif_wstork_2000_2019_summer_buffer_landcover, select = -c(cells) )
# join with shrubcover data
gbif_wstork_2000_2019_summer_buffer_landcover <- cbind(gbif_wstork_2000_2019_summer_buffer_landcover, raster::extract(x = shrubcover, y = gbif_wstork_2000_2019_summer_buffer_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_buffer_landcover <- gbif_wstork_2000_2019_summer_buffer_landcover[!duplicated(gbif_wstork_2000_2019_summer_buffer_landcover$cells),]
gbif_wstork_2000_2019_summer_buffer_landcover <- subset(gbif_wstork_2000_2019_summer_buffer_landcover, select = -c(cells) )


  ###-----------------------------------------------
  # 7 - RENAMEING environmental data rows 
  ###-----------------------------------------------
### Winter 
# remove NAs
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas %>% filter(!is.na(tmean_wintering))
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas %>% filter(!is.na(tmax_wintering))
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas %>% filter(!is.na(tmin_wintering))
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas %>% filter(!is.na(precmean_wintering))
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas %>% filter(!is.na(ndvi_2000_2015_wintering))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(tmean))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(diurnalmean))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(iso))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(tseas))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(tmax))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(tmin))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(tarange))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(tmeanWeQ))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(tmeanDQ))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(tmeanWaQ))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(tmeanCQ))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(prec))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(precWeM))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(precDM))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(precseas))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(precWeQ))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(precDQ))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(precWaQ))
gbif_wstork_2000_2019_winter_buffer_climate <- gbif_wstork_2000_2019_winter_buffer_climate %>% filter(!is.na(precCQ))
gbif_wstork_2000_2019_winter_buffer_landcover <- gbif_wstork_2000_2019_winter_buffer_landcover %>% filter(!is.na(treecover))
gbif_wstork_2000_2019_winter_buffer_landcover <- gbif_wstork_2000_2019_winter_buffer_landcover %>% filter(!is.na(cropscover))
gbif_wstork_2000_2019_winter_buffer_landcover <- gbif_wstork_2000_2019_winter_buffer_landcover %>% filter(!is.na(grasscover))
gbif_wstork_2000_2019_winter_buffer_landcover <- gbif_wstork_2000_2019_winter_buffer_landcover %>% filter(!is.na(shrubcover))
# rename seas col names
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas %>% rename(tmean = tmean_wintering)
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas %>% rename(tmax = tmax_wintering)
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas %>% rename(tmin = tmin_wintering)
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas %>% rename(prec = precmean_wintering)
gbif_wstork_2000_2019_winter_buffer_climate_seas <- gbif_wstork_2000_2019_winter_buffer_climate_seas %>% rename(ndvi = ndvi_2000_2015_wintering)

### Summer
# remove NAs
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas %>% filter(!is.na(tmean_breeding))
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas %>% filter(!is.na(tmax_breeding))
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas %>% filter(!is.na(tmin_breeding))
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas %>% filter(!is.na(precmean_breeding))
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas %>% filter(!is.na(ndvi_2000_2015_breeding))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(tmean))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(diurnalmean))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(iso))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(tseas))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(tmax))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(tmin))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(tarange))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(tmeanWeQ))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(tmeanDQ))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(tmeanWaQ))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(tmeanCQ))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(prec))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(precWeM))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(precDM))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(precseas))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(precWeQ))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(precDQ))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(precWaQ))
gbif_wstork_2000_2019_summer_buffer_climate <- gbif_wstork_2000_2019_summer_buffer_climate %>% filter(!is.na(precCQ))
gbif_wstork_2000_2019_summer_buffer_landcover <- gbif_wstork_2000_2019_summer_buffer_landcover %>% filter(!is.na(treecover))
gbif_wstork_2000_2019_summer_buffer_landcover <- gbif_wstork_2000_2019_summer_buffer_landcover %>% filter(!is.na(cropscover))
gbif_wstork_2000_2019_summer_buffer_landcover <- gbif_wstork_2000_2019_summer_buffer_landcover %>% filter(!is.na(grasscover))
gbif_wstork_2000_2019_summer_buffer_landcover <- gbif_wstork_2000_2019_summer_buffer_landcover %>% filter(!is.na(shrubcover))
# rename seas col names
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas %>% rename(tmean = tmean_breeding)
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas %>% rename(tmax = tmax_breeding)
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas %>% rename(tmin = tmin_breeding)
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas %>% rename(prec = precmean_breeding)
gbif_wstork_2000_2019_summer_buffer_climate_seas <- gbif_wstork_2000_2019_summer_buffer_climate_seas %>% rename(ndvi = ndvi_2000_2015_breeding)

save(gbif_wstork_2000_2019_winter_buffer_climate_seas, file = "./analysis/buffer/gbif_wstork_2000_2019_winter_buffer_climate_seas.Rdata")
save(gbif_wstork_2000_2019_winter_buffer_climate, file = "./analysis/buffer/gbif_wstork_2000_2019_winter_buffer_climate.Rdata")
save(gbif_wstork_2000_2019_winter_buffer_landcover, file = "./analysis/buffer/gbif_wstork_2000_2019_winter_buffer_landcover.Rdata")
save(gbif_wstork_2000_2019_summer_buffer_climate_seas, file = "./analysis/buffer/gbif_wstork_2000_2019_summer_buffer_climate_seas.Rdata")
save(gbif_wstork_2000_2019_summer_buffer_climate, file = "./analysis/buffer/gbif_wstork_2000_2019_summer_buffer_climate.Rdata")
save(gbif_wstork_2000_2019_summer_buffer_landcover, file = "./analysis/buffer/gbif_wstork_2000_2019_summer_buffer_landcover.Rdata")

##################################################
# RANGE BG - Pseudo absence
##################################################
  ###-----------------------------------------------
  # 6 - JOIN PRESENCE/ABSENCE AND BIOVARIABLES
  ###-----------------------------------------------

###---                        ---###
### 6.1a - Joining Data - Winter ###
###---                        ---###

# prepare the presences data to contain a column indicating 1 for presence
gbif_wstork_2000_2019_winter_range <- data.frame(gbif_wstork_2000_2019_winter, occ=1)
# Second, we make sure the background data have the same columns, and indicate 0 for absence.
gbif_wstork_2000_2019_winter_bg_range <- data.frame(gbif_wstork_2000_2019_winter_bg_range_points)
names(gbif_wstork_2000_2019_winter_bg_range) <-  c('decimalLongitude','decimalLatitude')
gbif_wstork_2000_2019_winter_bg_range$occ <-  0
# Third, we bind these two data sets
gbif_wstork_2000_2019_winter_range <- rbind(gbif_wstork_2000_2019_winter_range, gbif_wstork_2000_2019_winter_bg_range)

### CLIMATE SEAS
# tmean
gbif_wstork_2000_2019_winter_range_climate_seas <- cbind(gbif_wstork_2000_2019_winter_range, 
                                                          raster::extract(x = tmean_wintering, y = gbif_wstork_2000_2019_winter_range[,c('decimalLongitude','decimalLatitude')], 
                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_range_climate_seas$cells),]
gbif_wstork_2000_2019_winter_range_climate_seas <- subset(gbif_wstork_2000_2019_winter_range_climate_seas, select = -c(cells) )
# tmax
gbif_wstork_2000_2019_winter_range_climate_seas <- cbind(gbif_wstork_2000_2019_winter_range_climate_seas, 
                                                          raster::extract(x = tmax_wintering, y = gbif_wstork_2000_2019_winter_range_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_range_climate_seas$cells),]
gbif_wstork_2000_2019_winter_range_climate_seas <- subset(gbif_wstork_2000_2019_winter_range_climate_seas, select = -c(cells) )
# tmin
gbif_wstork_2000_2019_winter_range_climate_seas <- cbind(gbif_wstork_2000_2019_winter_range_climate_seas, 
                                                          raster::extract(x = tmin_wintering, y = gbif_wstork_2000_2019_winter_range_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_range_climate_seas$cells),]
gbif_wstork_2000_2019_winter_range_climate_seas <- subset(gbif_wstork_2000_2019_winter_range_climate_seas, select = -c(cells) )
# prec
gbif_wstork_2000_2019_winter_range_climate_seas <- cbind(gbif_wstork_2000_2019_winter_range_climate_seas, 
                                                          raster::extract(x = precmean_wintering, y = gbif_wstork_2000_2019_winter_range_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_range_climate_seas$cells),]
gbif_wstork_2000_2019_winter_range_climate_seas <- subset(gbif_wstork_2000_2019_winter_range_climate_seas, select = -c(cells) )
# ndvi
gbif_wstork_2000_2019_winter_range_climate_seas <- cbind(gbif_wstork_2000_2019_winter_range_climate_seas, 
                                                          raster::extract(x = ndvi_wintering, y = gbif_wstork_2000_2019_winter_range_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas[!duplicated(gbif_wstork_2000_2019_winter_range_climate_seas$cells),]
gbif_wstork_2000_2019_winter_range_climate_seas <- subset(gbif_wstork_2000_2019_winter_range_climate_seas, select = -c(cells) )

### CLIMATE
# tmean
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range, raster::extract(x = tmean, y = gbif_wstork_2000_2019_winter_range[,c('decimalLongitude','decimalLatitude')], 
                                                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# diurnalmean
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = diurnalmean, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# iso
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = iso, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# tseas
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = tseas, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# tmax
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = tmax, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# tmin
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = tmin, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# tarange
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = tarange, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# tmeanWeQ
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = tmeanWeQ, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# tmeanDQ
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = tmeanDQ, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# tmeanWaQ
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = tmeanWaQ, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# tmeanCQ
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = tmeanCQ, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# prec
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = prec, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# precWeM
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = precWeM, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# precDM
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = precDM, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# precseas
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = precseas, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# precWeQ
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = precWeQ, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# precDQ
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = precDQ, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# precWaQ
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = precWaQ, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )
# precCQ
gbif_wstork_2000_2019_winter_range_climate <- cbind(gbif_wstork_2000_2019_winter_range_climate, raster::extract(x = precCQ, y = gbif_wstork_2000_2019_winter_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate[!duplicated(gbif_wstork_2000_2019_winter_range_climate$cells),]
gbif_wstork_2000_2019_winter_range_climate <- subset(gbif_wstork_2000_2019_winter_range_climate, select = -c(cells) )

### LAND COVER
# join with ndvi data
#gbif_wstork_2000_2019_winter_range_landcover <- cbind(gbif_wstork_2000_2019_winter_range, raster::extract(x = ndvi, y = gbif_wstork_2000_2019_winter_range[,c('decimalLongitude','decimalLatitude')], 
#                                                                                                        cellnumbers=T) )
#gbif_wstork_2000_2019_winter_range_landcover <- gbif_wstork_2000_2019_winter_range_landcover[!duplicated(gbif_wstork_2000_2019_winter_range_landcover$cells),]
#gbif_wstork_2000_2019_winter_range_landcover <- subset(gbif_wstork_2000_2019_winter_range_landcover, select = -c(cells) )
# join with treecover data
#gbif_wstork_2000_2019_winter_range_landcover <- cbind(gbif_wstork_2000_2019_winter_range_landcover, raster::extract(x = treecover, y = gbif_wstork_2000_2019_winter_range_landcover[,c('decimalLongitude','decimalLatitude')], 
#                                                                                                                  cellnumbers=T) )
#gbif_wstork_2000_2019_winter_range_landcover <- gbif_wstork_2000_2019_winter_range_landcover[!duplicated(gbif_wstork_2000_2019_winter_range_landcover$cells),]
#gbif_wstork_2000_2019_winter_range_landcover <- subset(gbif_wstork_2000_2019_winter_range_landcover, select = -c(cells) )
# join with treecover data
gbif_wstork_2000_2019_winter_range_landcover <- cbind(gbif_wstork_2000_2019_winter_range, raster::extract(x = treecover, y = gbif_wstork_2000_2019_winter_range[,c('decimalLongitude','decimalLatitude')], 
                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_landcover <- gbif_wstork_2000_2019_winter_range_landcover[!duplicated(gbif_wstork_2000_2019_winter_range_landcover$cells),]
gbif_wstork_2000_2019_winter_range_landcover <- subset(gbif_wstork_2000_2019_winter_range_landcover, select = -c(cells) )
# join with cropscover data
gbif_wstork_2000_2019_winter_range_landcover <- cbind(gbif_wstork_2000_2019_winter_range_landcover, raster::extract(x = cropscover, y = gbif_wstork_2000_2019_winter_range_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_landcover <- gbif_wstork_2000_2019_winter_range_landcover[!duplicated(gbif_wstork_2000_2019_winter_range_landcover$cells),]
gbif_wstork_2000_2019_winter_range_landcover <- subset(gbif_wstork_2000_2019_winter_range_landcover, select = -c(cells) )
# join with grasscover data
gbif_wstork_2000_2019_winter_range_landcover <- cbind(gbif_wstork_2000_2019_winter_range_landcover, raster::extract(x = grasscover, y = gbif_wstork_2000_2019_winter_range_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_landcover <- gbif_wstork_2000_2019_winter_range_landcover[!duplicated(gbif_wstork_2000_2019_winter_range_landcover$cells),]
gbif_wstork_2000_2019_winter_range_landcover <- subset(gbif_wstork_2000_2019_winter_range_landcover, select = -c(cells) )
# join with shrubcover data
gbif_wstork_2000_2019_winter_range_landcover <- cbind(gbif_wstork_2000_2019_winter_range_landcover, raster::extract(x = shrubcover, y = gbif_wstork_2000_2019_winter_range_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_winter_range_landcover <- gbif_wstork_2000_2019_winter_range_landcover[!duplicated(gbif_wstork_2000_2019_winter_range_landcover$cells),]
gbif_wstork_2000_2019_winter_range_landcover <- subset(gbif_wstork_2000_2019_winter_range_landcover, select = -c(cells) )

###---                        ---###
### 6.1b - Joining Data - Summer ###
###---                        ---###

# prepare the presences data to contain a column indicating 1 for presence
gbif_wstork_2000_2019_summer_range <- data.frame(gbif_wstork_2000_2019_summer, occ=1)
# Second, we make sure the background data have the same columns, and indicate 0 for absence.
gbif_wstork_2000_2019_summer_bg_range <- data.frame(gbif_wstork_2000_2019_summer_bg_range_points)
names(gbif_wstork_2000_2019_summer_bg_range) <-  c('decimalLongitude','decimalLatitude')
gbif_wstork_2000_2019_summer_bg_range$occ <-  0
# Third, we bind these two data sets
gbif_wstork_2000_2019_summer_range <- rbind(gbif_wstork_2000_2019_summer_range, gbif_wstork_2000_2019_summer_bg_range)

### CLIMATE SEAS
# tmean
gbif_wstork_2000_2019_summer_range_climate_seas <- cbind(gbif_wstork_2000_2019_summer_range, raster::extract(x = tmean_breeding, y = gbif_wstork_2000_2019_summer_range[,c('decimalLongitude','decimalLatitude')], 
                                                                                                               cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_range_climate_seas$cells),]
gbif_wstork_2000_2019_summer_range_climate_seas <- subset(gbif_wstork_2000_2019_summer_range_climate_seas, select = -c(cells) )
# tmax
gbif_wstork_2000_2019_summer_range_climate_seas <- cbind(gbif_wstork_2000_2019_summer_range_climate_seas, raster::extract(x = tmax_breeding, y = gbif_wstork_2000_2019_summer_range_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_range_climate_seas$cells),]
gbif_wstork_2000_2019_summer_range_climate_seas <- subset(gbif_wstork_2000_2019_summer_range_climate_seas, select = -c(cells) )
# tmin
gbif_wstork_2000_2019_summer_range_climate_seas <- cbind(gbif_wstork_2000_2019_summer_range_climate_seas, raster::extract(x = tmin_breeding, y = gbif_wstork_2000_2019_summer_range_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_range_climate_seas$cells),]
gbif_wstork_2000_2019_summer_range_climate_seas <- subset(gbif_wstork_2000_2019_summer_range_climate_seas, select = -c(cells) )
# prec
gbif_wstork_2000_2019_summer_range_climate_seas <- cbind(gbif_wstork_2000_2019_summer_range_climate_seas, raster::extract(x = precmean_breeding, y = gbif_wstork_2000_2019_summer_range_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_range_climate_seas$cells),]
gbif_wstork_2000_2019_summer_range_climate_seas <- subset(gbif_wstork_2000_2019_summer_range_climate_seas, select = -c(cells) )
# ndvi
gbif_wstork_2000_2019_summer_range_climate_seas <- cbind(gbif_wstork_2000_2019_summer_range_climate_seas, 
                                                          raster::extract(x = ndvi_breeding, y = gbif_wstork_2000_2019_summer_range_climate_seas[,c('decimalLongitude','decimalLatitude')], 
                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas[!duplicated(gbif_wstork_2000_2019_summer_range_climate_seas$cells),]
gbif_wstork_2000_2019_summer_range_climate_seas <- subset(gbif_wstork_2000_2019_summer_range_climate_seas, select = -c(cells) )


### CLIMATE
# tmean
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range, raster::extract(x = tmean, y = gbif_wstork_2000_2019_summer_range[,c('decimalLongitude','decimalLatitude')], 
                                                                                                          cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# diurnalmean
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = diurnalmean, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# iso
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = iso, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# tseas
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = tseas, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# tmax
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = tmax, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# tmin
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = tmin, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# tarange
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = tarange, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# tmeanWeQ
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = tmeanWeQ, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# tmeanDQ
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = tmeanDQ, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# tmeanWaQ
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = tmeanWaQ, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# tmeanCQ
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = tmeanCQ, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# prec
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = prec, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# precWeM
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = precWeM, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# precDM
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = precDM, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# precseas
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = precseas, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# precWeQ
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = precWeQ, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# precDQ
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = precDQ, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# precWaQ
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = precWaQ, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )
# precCQ
gbif_wstork_2000_2019_summer_range_climate <- cbind(gbif_wstork_2000_2019_summer_range_climate, raster::extract(x = precCQ, y = gbif_wstork_2000_2019_summer_range_climate[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                  cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate[!duplicated(gbif_wstork_2000_2019_summer_range_climate$cells),]
gbif_wstork_2000_2019_summer_range_climate <- subset(gbif_wstork_2000_2019_summer_range_climate, select = -c(cells) )

### LAND COVER
# join with ndvi data
#gbif_wstork_2000_2019_summer_range_landcover <- cbind(gbif_wstork_2000_2019_summer_range, raster::extract(x = ndvi, y = gbif_wstork_2000_2019_summer_range[,c('decimalLongitude','decimalLatitude')], 
#                                                                                                        cellnumbers=T) )
#gbif_wstork_2000_2019_summer_range_landcover <- gbif_wstork_2000_2019_summer_range_landcover[!duplicated(gbif_wstork_2000_2019_summer_range_landcover$cells),]
#gbif_wstork_2000_2019_summer_range_landcover <- subset(gbif_wstork_2000_2019_summer_range_landcover, select = -c(cells) )
# join with treecover data
#gbif_wstork_2000_2019_summer_range_landcover <- cbind(gbif_wstork_2000_2019_summer_range_landcover, raster::extract(x = treecover, y = gbif_wstork_2000_2019_summer_range_landcover[,c('decimalLongitude','decimalLatitude')], 
#                                                                                                                  cellnumbers=T) )
#gbif_wstork_2000_2019_summer_range_landcover <- gbif_wstork_2000_2019_summer_range_landcover[!duplicated(gbif_wstork_2000_2019_summer_range_landcover$cells),]
#gbif_wstork_2000_2019_summer_range_landcover <- subset(gbif_wstork_2000_2019_summer_range_landcover, select = -c(cells) )
# join with treecover data
gbif_wstork_2000_2019_summer_range_landcover <- cbind(gbif_wstork_2000_2019_summer_range, raster::extract(x = treecover, y = gbif_wstork_2000_2019_summer_range[,c('decimalLongitude','decimalLatitude')], 
                                                                                                            cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_landcover <- gbif_wstork_2000_2019_summer_range_landcover[!duplicated(gbif_wstork_2000_2019_summer_range_landcover$cells),]
gbif_wstork_2000_2019_summer_range_landcover <- subset(gbif_wstork_2000_2019_summer_range_landcover, select = -c(cells) )
# join with cropscover data
gbif_wstork_2000_2019_summer_range_landcover <- cbind(gbif_wstork_2000_2019_summer_range_landcover, raster::extract(x = cropscover, y = gbif_wstork_2000_2019_summer_range_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_landcover <- gbif_wstork_2000_2019_summer_range_landcover[!duplicated(gbif_wstork_2000_2019_summer_range_landcover$cells),]
gbif_wstork_2000_2019_summer_range_landcover <- subset(gbif_wstork_2000_2019_summer_range_landcover, select = -c(cells) )
# join with grasscover data
gbif_wstork_2000_2019_summer_range_landcover <- cbind(gbif_wstork_2000_2019_summer_range_landcover, raster::extract(x = grasscover, y = gbif_wstork_2000_2019_summer_range_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_landcover <- gbif_wstork_2000_2019_summer_range_landcover[!duplicated(gbif_wstork_2000_2019_summer_range_landcover$cells),]
gbif_wstork_2000_2019_summer_range_landcover <- subset(gbif_wstork_2000_2019_summer_range_landcover, select = -c(cells) )
# join with shrubcover data
gbif_wstork_2000_2019_summer_range_landcover <- cbind(gbif_wstork_2000_2019_summer_range_landcover, raster::extract(x = shrubcover, y = gbif_wstork_2000_2019_summer_range_landcover[,c('decimalLongitude','decimalLatitude')], 
                                                                                                                      cellnumbers=T) )
gbif_wstork_2000_2019_summer_range_landcover <- gbif_wstork_2000_2019_summer_range_landcover[!duplicated(gbif_wstork_2000_2019_summer_range_landcover$cells),]
gbif_wstork_2000_2019_summer_range_landcover <- subset(gbif_wstork_2000_2019_summer_range_landcover, select = -c(cells) )


  ###-----------------------------------------------
  # 7 - RENAMEING environmental data rows 
  ###-----------------------------------------------
### Winter 
# remove NAs
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas %>% filter(!is.na(tmean_wintering))
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas %>% filter(!is.na(tmax_wintering))
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas %>% filter(!is.na(tmin_wintering))
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas %>% filter(!is.na(precmean_wintering))
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas %>% filter(!is.na(ndvi_2000_2015_wintering))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(tmean))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(diurnalmean))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(iso))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(tseas))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(tmax))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(tmin))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(tarange))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(tmeanWeQ))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(tmeanDQ))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(tmeanWaQ))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(tmeanCQ))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(prec))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(precWeM))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(precDM))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(precseas))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(precWeQ))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(precDQ))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(precWaQ))
gbif_wstork_2000_2019_winter_range_climate <- gbif_wstork_2000_2019_winter_range_climate %>% filter(!is.na(precCQ))
gbif_wstork_2000_2019_winter_range_landcover <- gbif_wstork_2000_2019_winter_range_landcover %>% filter(!is.na(treecover))
gbif_wstork_2000_2019_winter_range_landcover <- gbif_wstork_2000_2019_winter_range_landcover %>% filter(!is.na(cropscover))
gbif_wstork_2000_2019_winter_range_landcover <- gbif_wstork_2000_2019_winter_range_landcover %>% filter(!is.na(grasscover))
gbif_wstork_2000_2019_winter_range_landcover <- gbif_wstork_2000_2019_winter_range_landcover %>% filter(!is.na(shrubcover))
# rename seas col names
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas %>% rename(tmean = tmean_wintering)
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas %>% rename(tmax = tmax_wintering)
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas %>% rename(tmin = tmin_wintering)
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas %>% rename(prec = precmean_wintering)
gbif_wstork_2000_2019_winter_range_climate_seas <- gbif_wstork_2000_2019_winter_range_climate_seas %>% rename(ndvi = ndvi_2000_2015_wintering)

### Summer
# remove NAs
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas %>% filter(!is.na(tmean_breeding))
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas %>% filter(!is.na(tmax_breeding))
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas %>% filter(!is.na(tmin_breeding))
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas %>% filter(!is.na(precmean_breeding))
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas %>% filter(!is.na(ndvi_2000_2015_breeding))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(tmean))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(diurnalmean))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(iso))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(tseas))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(tmax))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(tmin))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(tarange))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(tmeanWeQ))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(tmeanDQ))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(tmeanWaQ))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(tmeanCQ))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(prec))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(precWeM))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(precDM))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(precseas))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(precWeQ))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(precDQ))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(precWaQ))
gbif_wstork_2000_2019_summer_range_climate <- gbif_wstork_2000_2019_summer_range_climate %>% filter(!is.na(precCQ))
gbif_wstork_2000_2019_summer_range_landcover <- gbif_wstork_2000_2019_summer_range_landcover %>% filter(!is.na(treecover))
gbif_wstork_2000_2019_summer_range_landcover <- gbif_wstork_2000_2019_summer_range_landcover %>% filter(!is.na(cropscover))
gbif_wstork_2000_2019_summer_range_landcover <- gbif_wstork_2000_2019_summer_range_landcover %>% filter(!is.na(grasscover))
gbif_wstork_2000_2019_summer_range_landcover <- gbif_wstork_2000_2019_summer_range_landcover %>% filter(!is.na(shrubcover))
# rename seas col names
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas %>% rename(tmean = tmean_breeding)
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas %>% rename(tmax = tmax_breeding)
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas %>% rename(tmin = tmin_breeding)
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas %>% rename(prec = precmean_breeding)
gbif_wstork_2000_2019_summer_range_climate_seas <- gbif_wstork_2000_2019_summer_range_climate_seas %>% rename(ndvi = ndvi_2000_2015_breeding)

save(gbif_wstork_2000_2019_winter_range_climate_seas, file = "./analysis/range/gbif_wstork_2000_2019_winter_range_climate_seas.Rdata")
save(gbif_wstork_2000_2019_winter_range_climate, file = "./analysis/range/gbif_wstork_2000_2019_winter_range_climate.Rdata")
save(gbif_wstork_2000_2019_winter_range_landcover, file = "./analysis/range/gbif_wstork_2000_2019_winter_range_landcover.Rdata")
save(gbif_wstork_2000_2019_summer_range_climate_seas, file = "./analysis/range/gbif_wstork_2000_2019_summer_range_climate_seas.Rdata")
save(gbif_wstork_2000_2019_summer_range_climate, file = "./analysis/range/gbif_wstork_2000_2019_summer_range_climate.Rdata")
save(gbif_wstork_2000_2019_summer_range_landcover, file = "./analysis/range/gbif_wstork_2000_2019_summer_range_landcover.Rdata")

########################################################################
# 8 - NICHE QUANTIFICATION AND COMPARISON WITH ORDINATION TECHNIQUES ###
########################################################################
  ##---                            ---###          
  ## 7.0 - Preparation & loading data ###
  ##---                            ---###

### 2000 - 2019 ### Climate
# data for the niche dynamics analysis in the summer range
  #breed <- gbif_wstork_2000_2019_summer_rand_climate 
  #breed <- gbif_wstork_2000_2019_summer_buffer_climate
  breed <- gbif_wstork_2000_2019_summer_range_climate
# data for the niche dynamics analysis in the winter range
  #wint <- gbif_wstork_2000_2019_winter_rand_climate
  #wint <- gbif_wstork_2000_2019_winter_buffer_climate
  wint <- gbif_wstork_2000_2019_winter_range_climate
  
### 2000 - 2019 ### Climate Seasonal
# data for the niche dynamics analysis in the summer range
  #breed <- gbif_wstork_2000_2019_summer_rand_climate_seas
  #breed <- gbif_wstork_2000_2019_summer_buffer_climate_seas
  breed <- gbif_wstork_2000_2019_summer_range_climate_seas
# data for the niche dynamics analysis in the winter range
  #wint <- gbif_wstork_2000_2019_winter_rand_climate_seas
  #wint <- gbif_wstork_2000_2019_winter_buffer_climate_seas
  wint <- gbif_wstork_2000_2019_winter_range_climate_seas
  
### 2000 - 2019 ### Landcover
# data for the niche dynamics analysis in the summer range
  #breed <- gbif_wstork_2000_2019_summer_rand_landcover
  #breed <- gbif_wstork_2000_2019_summer_buffer_landcover
  breed <- gbif_wstork_2000_2019_summer_range_landcover
# data for the niche dynamics analysis in the winter range
  #wint <- gbif_wstork_2000_2019_winter_rand_landcover
  #wint <- gbif_wstork_2000_2019_winter_buffer_landcover
  wint <- gbif_wstork_2000_2019_winter_range_landcover


# check again for NAs
any(is.na(breed))
any(is.na(wint))

  ##---
  ## 7.1 - PCA Environment
  ##---
# PCA is calibrated on all the sites of the study area, including both wintering and breeding ranges 
#   (same as PCAenv in Broenniman et al. 2012)
pca.env <- dudi.pca(rbind(breed,wint)[,-c(1:3)],scannf=F,nf=2)

# Plot Variables Contribution with ecospat.plot.contrib()
ecospat.plot.contrib(contrib=pca.env$co, eigen=pca.env$eig)
# PCA scores for the whole study area
scores.globclim <- pca.env$li
# PCA scores for the species wintering distribution
scores.sp.wint <- suprow(pca.env,wint[which(wint[,3]==1),-c(1:3)])$li
# PCA scores for the species breeding distribution
scores.sp.breed <- suprow(pca.env,breed[which(breed[,3]==1),-c(1:3)])$li
# PCA scores for the whole wintering area
scores.clim.wint <- suprow(pca.env,wint[,-c(1:3)])$li
# PCA scores for the whole breeding area
scores.clim.breed <- suprow(pca.env,breed[,-c(1:3)])$li

  ##---
  ## 7.2 - Calculate the Occurrence Densities Grid with ecospat.grid.clim.dyn()
  ##---
# gridding the native niche (species in the wintering range)
grid.clim.wint <- ecospat.grid.clim.dyn(glob=scores.globclim,
                                       glob1=scores.clim.wint,
                                       sp=scores.sp.wint, R=100,
                                       th.sp=0)
# gridding the invasive niche (species in the breeding range)
grid.clim.breed <- ecospat.grid.clim.dyn(glob=scores.globclim,
                                       glob1=scores.clim.breed,
                                       sp=scores.sp.breed, R=100,
                                       th.sp=0)

  ##---
  ## 7.3 - CALCULATE NICHE OVERLAP with ecospat.niche.overlap()
  ##---
# Compute Schoener's D, index of niche overlap
D.overlap <- ecospat.niche.overlap (grid.clim.wint, grid.clim.breed, cor = TRUE)$D
D.overlap #Overlap between winter and breeding range


##---
## 7.5 -  Perform the Niche Similarity Test with ecospat.niche.similarity.test()
##---
# It is recommended to use at least 1000 replications for the similarity test.
sim.test <- ecospat.niche.similarity.test(grid.clim.wint, grid.clim.breed,
                                          rep=200, alternative = "greater",
                                          rand.type=1)
# Niche similarity test H1: the observed overlap between the winter and breeding is higher than randomly
#   shifted winter niches in the breeding study area
# Plot Similarity test
ecospat.plot.overlap.test(sim.test, "D", "Niche Similarity Test")





  ##---
  ## 7.4 - Perform the Niche Equivalency Test with ecospat.niche.equivalency.test() according
  ##          to Warren et al. (2008)
  ##---
# equivalency test (normally use at least 1000 replications)
eq.test <- ecospat.niche.equivalency.test(grid.clim.wint, grid.clim.breed,
                                          rep=200, alternative = "greater")
# Niche equivalency test H1: the observed overlap between the winter and breeding niche is higher than if
#   the two niches are randomized
# Plot Equivalency test
ecospat.plot.overlap.test(eq.test, "D", "Equivalency")


  ##---
  ## 7.6 -  Delimiting niche categories and quantifying niche dynamics in analogue climates
  ##          with ecospat.niche.dyn.index()
  ##---
niche.dyn <- ecospat.niche.dyn.index (grid.clim.wint, grid.clim.breed, intersection = 0.1)

### 7.6.1 - Visualizing niche categories, niche dynamics and climate analogy between ranges
###            with ecospat.plot.niche.dyn()
# Plot niche overlap
ecospat.plot.niche.dyn(grid.clim.wint, grid.clim.breed, quant=0.25, interest=2,
                       name.axis1="PC1", name.axis2="PC2",
                       #title= "Seasonal Niche Overlap between Wintering and Breeding Range"
                       )
ecospat.shift.centroids(scores.sp.wint, scores.sp.breed, scores.clim.wint, scores.clim.breed)
?ecospat.plot.niche.dyn
?ecospat.shift.centroids


### 7.6.2 - Plot the niche dynamics along temperature-gradient
# gridding the winter niche
grid.clim.t.wint <- ecospat.grid.clim.dyn(glob=as.data.frame(rbind(wint,breed)[,4]),
                                         glob1=as.data.frame(wint[,4]),
                                         sp=as.data.frame(wint[which(wint[,3]==1),4]),
                                         R=1000, th.sp=0)
# gridding the breeding niche
grid.clim.t.breed <- ecospat.grid.clim.dyn(glob=as.data.frame(rbind(wint,breed)[,4]),
                                         glob1=as.data.frame(breed[,4]),
                                         sp=as.data.frame(breed[which(breed[,3]==1),4]),
                                         R=1000, th.sp=0)
t.dyn<-ecospat.niche.dyn.index (grid.clim.t.wint, grid.clim.t.breed,
                                intersection=0.1)
ecospat.plot.niche.dyn(grid.clim.t.wint, grid.clim.t.breed, quant=0,
                       interest=2, title= "Niche Overlap along the temperature-gradient",
                       name.axis1="Average temperature")

