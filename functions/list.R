#
#  S.a. -> list()
#

foo=c(  1 ,  2 ,  3)
bar=c( 10 , 20 , 30)
baz=c(100 ,200 ,300)

l = list (foo, bar, baz)
l
# [[1]]
# [1] 1 2 3
# 
# [[2]]
# [1] 10 20 30
# 
# [[3]]
# [1] 100 200 300
 
l[0]      
# list()

l[1]
# [[1]]
# 1 2 3

l[2]
# [[2]]
# [1] 10 20 30

l[]
# [[3]]
# [1] 100 200 300

l[[2]][1] = 999
l[2]
# [[1]]
# [1] 999  20  30

unlist(l)
# [1]   1   2   3 999  20  30 100 200 300

# ------------------------

abc <- 1:10
def <- 95:99
ghi <- 22:26

abc_def_ghi <- list(part_one = abc, part_two = def, part_three = ghi)
abc_def_ghi
# $part_one
#  [1]  1  2  3  4  5  6  7  8  9 10
# 
# $part_two
# [1] 95 96 97 98 99
# 
# $part_three
# [1] 22 23 24 25 26


# ------------------------
# Unlike -> c(), list can combine different datatypes:
cat("\n")
list_1 <- list("foo", TRUE, 2.4)
str(list_1)
# List of 3
#  $ : chr "foo"
#  $ : logi TRUE
#  $ : num 2.4

cat("\n")
c_1    <- c   ("foo", TRUE, 2.4)
str(c_1)
# chr [1:3] "foo" "TRUE" "2.4"
#
# (Note the apostrophes around 2.4 and TRUE!
