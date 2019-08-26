f <- factor(c('foo', 'bar', 'foo', 'baz', 'bar'));

f
#
# [1] foo bar foo baz bar
# Levels: bar baz foo

as.character(f);
#
# [1] "foo" "bar" "foo" "baz" "bar"
