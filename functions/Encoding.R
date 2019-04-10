# name <- '\x52\x65\x6e\xc3\xa9';
name <- '\x52\x65\x6e\xe9';
name
#
# [1] "Ren\xe9"

Encoding(name) <- 'latin1'
name
#
# [1] "René"
