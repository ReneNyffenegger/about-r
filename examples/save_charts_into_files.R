
x <- 1:100
y <- log(x)

pdf("save_chartes_into_files.pdf")
plot(x, y)
graphics.off()

postscript("save_chartes_into_files.ps")
plot(x, y)
graphics.off()

bmp("save_chartes_into_files.bmp")
plot(x, y)
graphics.off()

jpeg("save_chartes_into_files.jpeg")
plot(x, y)
graphics.off()

png("save_chartes_into_files.png")
plot(x, y)
graphics.off()

tiff("save_chartes_into_files.tiff")
plot(x, y)
graphics.off()
