cdf <- pnorm(breaks_, mean_, sd_);

lines(
    breaks_                ,
    cdf * max(hist_$counts),
    col ='#ff5533'         ,
    lwd = 3
);
