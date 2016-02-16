text    <- 'foo 42 bar 123 baz'
pattern <- '\\d+'
repl    <- ''

sub(pattern, repl, text)
# [1] "foo  bar 123 baz"

pattern <- '.*(\\d+).*'
repl    <- '\\1'
sub(pattern, repl, text)
# [1] "3"

pattern <- '.* (\\d+).*'
repl    <- '\\1'
sub(pattern, repl, text)
# [1] "123"

# non greedy:
pattern <- '.*? (\\d+).*'
repl    <- '\\1'
sub(pattern, repl, text)
# [1] "42"
