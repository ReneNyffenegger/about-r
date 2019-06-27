library(hash)

h <- hash();

h$one <- 'foo';
h[c('two', 'three')] <- c('bar', 'baz');

for (k in keys(h)) {
  print(paste0("h['", k, "'] = ", h[[ k ]]));
}
#
#  [1] "h['one'] = foo"
#  [1] "h['three'] = baz"
#  [1] "h['two'] = bar"
