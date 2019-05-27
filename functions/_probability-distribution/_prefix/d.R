dens <- dnorm(breaks_, mean_, sd_);

lines(
    breaks_            ,
    dens / max(dens) * max(hist_$counts),
    col='#30e0a0',
    lwd = 3
);
