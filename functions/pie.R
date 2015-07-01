#
#    Note: ?pie gives a clue as to why pie charts are
#          a poor choice to convey information:
#
#         «Pie charts are a very bad way of displaying information.
#          The eye is good at judging linear measures and bad at
#          judging relative areas. A bar chart or dot chart is a
#          preferable way of displaying this type of data.»
#
#    See ../examples/colors/hue.R on how pie might be used.

x11()

sales <- c(51, 76, 92)
names(sales) <- c('Foo', 'Bar', 'Baz')

pie(sales, main="Sales") 
z <- locator(1)
