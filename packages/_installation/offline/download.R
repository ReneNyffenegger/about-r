pkgs <- c('shiny', 'tidyverse', 'odbc', 'ggplot2');

version <- '3.6.1';
dep_pkgs <- unlist(tools::package_dependencies(
   packages  = pkgs,
   db        = available.packages(), 
   which     = c('Depends', 'Imports'),
   version   = version,
   recursive = TRUE
));

all_pkgs <- union(pkgs, dep_pkgs);

pkg_dir <- paste0(Sys.getenv('TEMP'), '/pkgs', '-', version);
dir.create(pkg_dir);

setwd(pkg_dir);

pkg_downloaded <- download.packages(
   pkgs    = all_pkgs,
   destdir = pkg_dir,
   type    ='win.binary',              # Change here #
   version = version
);

write.csv(
   file = 'packages.csv',
   basename(pkg_downloaded[, 2]),
   row.names = FALSE
);
