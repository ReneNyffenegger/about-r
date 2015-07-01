#
#     See also -> rgb()
#


col2rgb("blue")
#       [,1]
# red      0
# green    0
# blue   255

cat ("\n\n")

col2rgb("yellow")
#       [,1]
# red    255
# green  255
# blue     0


cat ("\n\n")

col2rgb(c('snow', 'orchid1', 'lightyellow'))
#       [,1] [,2] [,3]
# red    255  255  255
# green  250  131  255
# blue   250  250  224
