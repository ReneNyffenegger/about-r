#
#   https://stackoverflow.com/q/29119074/180275
#
X11()
library(rworldmap)

country_foo = read.table(text='country foo
Angola        32
Brazil        31
Czechia       28
Egypt         87
India         69
Mexico        52
Poland        48
Spain         59
Zimbbabwe     62',
 header=T)

map <- joinCountryData2Map(
       country_foo,
       joinCode       = "NAME",
       nameJoinColumn = "country"
     )

png('img/highlight-countries.png', width=400, height=300)
par(mar=c(0, 0, 1, 0))
mapCountryData(map,
   nameColumnToPlot  = 'foo'        ,
   catMethod         = 'fixedWidth'
)

# z <- locator(1)
