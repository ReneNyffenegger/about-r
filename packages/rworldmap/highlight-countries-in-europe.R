X11()
library(rworldmap)

countries <- data.frame(
      country = c('AUT', 'CHE', 'DEU', 'CHE', 'ESP', 'FRA', 'ITA', 'NOR', 'POL', 'SWE'),
      foo     = c(   1 ,    3 ,    4 ,    1 ,    1 ,    2 ,    2 ,    3 ,    3,     2 )
)

n <- joinCountryData2Map(
       countries,
       joinCode       = "ISO3", # ISO 3166.1 / alpha 3
       nameJoinColumn = "country"
     )

png('img/highlight-countries-in-europe.png', width=400, height=400)
par(mar=c(0, 0, 1, 0))
mapCountryData(n,
   nameColumnToPlot  = 'foo'        ,
   catMethod         = 'categorical',
   mapRegion         = 'Europe'     ,
   oceanCol          = 'white'      ,
   missingCountryCol = 'light grey' ,
   borderCol         = 'white'
)

# z <- locator(1)
