y2000 <- as.Date("2000-01-01")

class(y2000)
# [1] "Date"

y2000_100days <- y2000 + 100

txt <- strftime(y2000_100days, '%F') # ISO 8601

class(txt)
# [1] "character"

txt
# 2000-04-10
