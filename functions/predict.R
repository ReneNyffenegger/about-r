# X11()

d <- data.frame (
  t <- c(25, 22, 18, 19, 21, 26, 26, 27, 24, 22),
  w <- c( 4,  3,  0,  6,  5,  3,  4,  1,  3,  1)
)

At =  3
Bt =  4
Et = rnorm(length(t), mean = 0, sd = 3.2)

Aw =  5
Bw = -2
Ew = rnorm(length(t), mean = 0, sd = 0.9)

d$o <- At + Bt*t + Et +
       Aw + Bw*w + Ew


model <- lm(d$o ~ d$t * d$w)


prediction <- predict(model)


data.frame(
  p = prediction,
  o = d$o
)
#            p         o
# 1  101.92822 101.02235
# 2   90.43924  93.38205
# 3   79.93667  80.02431
# 4   71.49645  70.13953
# 5   82.57825  84.57244
# 6  107.48234 106.16260
# 7  106.31569 107.85726
# 8  113.82305 115.09546
# 9   98.96079  95.83189
# 10  93.78607  92.65888

cat ("\n\n")
predict(model, data.frame(t=20, w=5))
# Warning message:
# 'newdata' had 1 row but variables found have 10 rows

# TODO http://stackoverflow.com/questions/31200748&
# plot(prediction, which=c(2))



# z <- locator(1)
