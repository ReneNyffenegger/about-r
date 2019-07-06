packages_to_load <- c('ggplot2', 'sqldf');

for (pkg in packages_to_load) {
   print(paste('Trying to load', pkg));
   eval(bquote(library(.(pkg))));
}

#
#  Show loaded packages
#
(.packages());
