#
#    The encoding of this source file is UTF-8.
#
#    If it were latin-1, the parser(?) would throw the error
#       invalid multibyte character in parser at line …
#
charToRaw('René')

#
#    Because the source file is in UTF-8, the
#    bytes of René are reported to be (c3 a9 = é)
#
#       [1] 52 65 6e c3 a9
#
