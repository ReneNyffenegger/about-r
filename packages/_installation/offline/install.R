setwd('P:/to/install/dir');

pkgs <- read.csv(
  'packages.csv',
   stringsAsFactors = FALSE
)[, 1];

install.packages(
   pkgs,
   repos = NULL,
   type  ='win.binary'
);
