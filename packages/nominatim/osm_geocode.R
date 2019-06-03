library(nominatim)

mapQuestKey <- readline(prompt('Enter Mapquest key: '));

wagenburg     <- osm_geocode('Wagenburg, Switzerland', key = mapQuestKey);
oberwagenburg <- osm_geocode('Wagenburg, Switzerland', key = mapQuestKey);

wagenburg    [c('display_name', 'lat', 'lon')];
oberwagenburg[c('display_name', 'lat', 'lon')];
