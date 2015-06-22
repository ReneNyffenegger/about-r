#
#     dotchart, aka cleveland dotplot.
#

x11()


sales <- c(51, 92, 76)
names(sales) <- c('Foo', 'Bar', 'Baz')
dotchart(sales, xlab="Sales")

z <- locator(1)
