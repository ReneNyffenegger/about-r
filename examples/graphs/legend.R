X11()

t <- 0:314

df <- data.frame (
   foo = 0.5*sin(t/100) + 0.25*sin(t/33+0.4) + 0.125*sin(t/99+0.55),
   bar = cos(t/215),
   baz = -0.4*(t/314)^3 +0.3*(t/314)^2+0.2*t/314 
)

COLORS     <- c('red'  , 'blue'  , 'green' )
LINE_TYPES <- c('solid', 'dotted', 'dashed')

matplot(
  df,
  type="l",
  xlab="t",
  ylab="f(t)",
  col = COLORS,
  lty = LINE_TYPES
)

legend(
  "bottomleft",
  c('foo', 'bar', 'baz'),
  col = COLORS,
  lty = LINE_TYPES
)

z <- locator(1)
