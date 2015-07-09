library(stringr)

str_pad('abcdef', side = 'left', pad = '>', width=9)
# [1] ">>>abcdef"


str_pad('xyz', side='both', pad=' ', width=20)
# [1] "        xyz         "
