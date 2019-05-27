set.seed(26);

mean_ <- 100
sd_   <-   5;

#
#  Generaate 10000 normal distributed values
#
n <- rnorm(10000, mean_, sd_);

from_ <-  80;
to_   <- 120;
breaks_ <- seq(from_, to_, by = 1);

#
#  Plot the values' frequency
#
# par(mar = c(2,2,0,0));
par(mar = c(2.5, 2.5, 0.5, 0.5));

hist_ <- hist(n,
     breaks =  breaks_,
     col    ='#ffdca9',
     main   =  NULL
);
