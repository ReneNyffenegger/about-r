which(c( F, T, T, F, F, F, T, F, T))
#[1] 2 3 7 9

# find longest name:
names = c('foo', 'bar baz', 'a longer foo than all other bazes', 'bar bazed on his own foo')

names_len = nchar(names)

names[which(names_len == max(names_len))]
# [1] "a longer foo than all other bazes"
