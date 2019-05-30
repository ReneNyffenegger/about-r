options(geonamesUsername=readline(prompt='Enter username for geonames.org: '));
options(geonamesHost="api.geonames.org");

library(geonames)

GNsearch(name = 'Wagenburg', country = 'CH');
