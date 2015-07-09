str = "The Foo and the Bar went up the Baz, but didn't succeed"

# { nchar - number of characters

nchar(str)
# [1] 55

# }

# { tolower / toupper / casefold - convert to lower/upper case

str = "Foo Bar Baz"
tolower(str)
# [1] "foo bar baz"

toupper(str)
# [1] "FOO BAR BAZ"

casefold(str)
# [1] "foo bar baz"

casefold(str, upper = TRUE)
# [1] "FOO BAR BAZ"

# }

# { chartr - character translation

chartr('aou', 'AOU', 'Foo, Bar, Baz')
# [1] "FOO, BAr, BAz"

# }

# { abbreviate - abbreviate strings

abbreviate(c('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'), minlength=2)
#   Monday   Tuesday Wednesday  Thursday    Friday  Saturday
#     "Mn"      "Ts"      "Wd"      "Th"      "Fr"      "St"

# }

# { substr - replace substrings

substr(paste0(letters, collapse=""), 10, 13)
# [1] "jklm"

# }
