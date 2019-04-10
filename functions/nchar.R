#
# How many characters in string
#
#    S.a. ../examples/basic_string_manipulation.R
#
nchar("forty-two")
# [1] 9

nchar(NA)
# [1] NA

nchar(NA, keepNA=F)
# [1] 2
