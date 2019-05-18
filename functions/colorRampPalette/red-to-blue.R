paletteFunc <- colorRampPalette(c('red', 'blue'));
palette     <- paletteFunc(8);

barplot(1:8, col=palette);
