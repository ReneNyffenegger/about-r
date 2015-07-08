df <- data.frame (
  foo = 1:10,
  bar = LETTERS[1:10]
)

save(df, file="./saved.Rdata")

rm(df)

load('./saved.Rdata')

df
#    foo bar
# 1    1   A
# 2    2   B
# 3    3   C
# 4    4   D
# 5    5   E
# 6    6   F
# 7    7   G
# 8    8   H
# 9    9   I
# 10  10   J
