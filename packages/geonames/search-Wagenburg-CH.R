library(geonames)
options(geonamesUsername=readline(prompt='Enter username for geonames.org: '));

GNsearch(name = 'Wagenburg', country = 'CH');
