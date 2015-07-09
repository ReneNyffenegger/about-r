str <- c(
  'Foo Bar Baz',
  'one two three four five'
)

# Positions of o:
gregexpr("o", str)
# [[1]]
# [1] 2 3
# attr(,"match.length")
# [1] 1 1
# attr(,"useBytes")
# [1] TRUE
# 
# [[2]]
# [1]  1  7 16
# attr(,"match.length")
# [1] 1 1 1
# attr(,"useBytes")
# [1] TRUE
