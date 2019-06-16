as.integer(ISOdate(1970, 1, 1, 0, 0, 0))
# [1] 0

as.integer(ISOdate(1970, 1, 1, 0, 0, 1))
# [1] 1

as.integer(ISOdate(1970, 1, 1, 0, 1, 0))
# [1] 60

as.integer(ISOdate(1971, 1, 1, 0, 0, 0)) / 24 / 60 / 60
# [1] 365
