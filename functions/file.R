f <- file("test.out")
writeLines(c("Line one", "Line two", "Line three"), f)
close(f)

file.show("test.out")
# Line one
# Line two
# Line three
