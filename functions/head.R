# Show first six elements
#
# Compare with -> tail()
#
# S.a. ../examples/having_a_look_at_data.R
#

head (1:100)
# [1] 1 2 3 4 5 6

head (1:100, n=3)
# [1] 1 2 3

head (1:100, n=-95)
# [1] 1 2 3 4 5

df <- data.frame(
   foo = 1:10,
   bar = LETTERS[1:10],
   baz = c('*', '!', '#', '?', ',', '/', '=', '+', '<', ')')
)

head(df, n=4)
#   foo bar baz
# 1   1   A   *
# 2   2   B   !
# 3   3   C   #
# 4   4   D   ?
