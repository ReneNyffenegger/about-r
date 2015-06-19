for (i in 1:5) {
  cat (i, "\n")
}
# 1
# 2
# 3
# 4
# 5

cat("\n\n")

for (i in seq(2, 8, 3)) {
  for (j in 1:i) {
    cat("* ")
  }
  cat("\n")
}
# * *
# * * * * *
# * * * * * * * *
