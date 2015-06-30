X11()

# Eight colors, repeats from 9th
barplot(
  rep(1,10),
  col=1:10,
  names.arg=
    paste (1:10, rep(': ', 10), c('black', 'red', 'green3', 'blue', 'cyan', 'magenta', 'yellow', 'gray', 'black', 'red')),
  las=2,
  yaxt='n')

z <- locator(1)

# ---- Almost same thing, but using palette()
barplot(
  rep(1,8),
  col      =palette(),
  names.arg=palette(),
  las=2,
  yaxt='n')

z <- locator(1)
