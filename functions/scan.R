#
#   Note, scan can also be used to read from stdin
#

s <- scan(file="scan.input")
# Read 9 items

s
# [1] 10.0 42.4 19.0  5.0  3.0 11.0 12.2 -6.0  4.0

mode(s)
# [1] "numeric"

#
#   Scanning from a (text-)connection
#   Note the second argument to scan that is
#   the type of items being read (»character()«)
#
s <- scan(textConnection('  one  two
  three    four  five
six   seven      eight
    nine     ten     '), character())
# Read 10 items

mode(s)
# [1] "character"

s
#  [1] "one"   "two"   "three" "four"  "five"  "six"   "seven" "eight" "nine"
# [10] "ten"
