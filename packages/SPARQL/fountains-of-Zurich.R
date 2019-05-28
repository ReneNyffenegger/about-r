library(SPARQL)
  
endPointWikiData <- 'https://query.wikidata.org/sparql';

query <- '
  select
       ?fountain
       ?statement
       ?img 
       ?coord
  where
  {
    ?fountain      p:P528   ?statement    .  # https://www.wikidata.org/wiki/Property:P528 / catalog name of an object, use with qualifier P972
    ?statement     pq:P972                   # https://www.wikidata.org/wiki/Property:P972 / catalog for the item, or, as a qualifier of P528 – catalog for which the "catalog code" is valid
                             wd:Q53629101 .  # https://www.wikidata.org/wiki/Q53629101     / The fountain data set maitained by City of Zurich drinking water supply
    ?fountain      wdt:P18  ?img          .  # https://www.wikidata.org/wiki/Property:P18  / Image of relevant illustration of the subject;
    ?fountain      wdt:P625 ?coord        .  # https://www.wikidata.org/wiki/Property:P625 / Coordinate location
  }
';

res <- SPARQL(endPointWikiData, query);

print(res$results$fountain );
print(res$results$statement);
print(res$results$img      );
print(res$results$coord    );
