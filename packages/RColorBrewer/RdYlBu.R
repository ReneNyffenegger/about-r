library(RColorBrewer)
library(raster)

palette = brewer.pal(11,'RdYlBu');

grid <- raster(ncols=11, nrows = 1, xmn=1, xmx=11, ymn=1,ymx=2);

values(grid) <- 1:11

par(mar=rep(0.5, 4))
plot(grid, col=palette, legend=FALSE, axes = 0, box=FALSE)
