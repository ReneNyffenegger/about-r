str = "Some foo, a little bar and lots of baz"

# { print()

print(str)
# [1] "Some foo, a little bar and lots of baz"

print(str, quote=FALSE)
# [1] Some foo, a little bar and lots of baz

# }

# { noquote()
#
#   prints its arguments with no quotes (see parameter
#   quote in -> print()

noquote(str)
# [1] Some foo, a little bar and lots of baz

# }

# { cat()

cat("ABC", 42, TRUE, "\n")
# ABC 42 TRUE

# }

# { format()

format(42.42)
# [1] "42.42"

# }

# { sprintf()

sprintf("%.3f", pi)
# [1] "3.142"

# }

# { toString()

toString(42)
# [1] "42"

# }
