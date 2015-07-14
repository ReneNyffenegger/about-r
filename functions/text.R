X11()

x = c(0.9, 2.2, 2.9, 3.3, 3.8, 4.5, 5.1, 5.6, 6.2)
y = x^2

t = paste0(x, "^2 = ", y)

par(xpd=TRUE) # Enable text to be drawn outside the plot region.

margins_orig = as.numeric(unlist(par()['mar']))
margins_     = margins_orig+c(0, 0, 0.1, 2) # extend top by 0.1, right by 2 
par (mar = margins_)  
# par  (usr = c(min(x)-100, max(x)+10, min(y), max(y)+ 0.1))

plot(x, y, pch=19, col='red',
     bty='n'  # Suppres box around plot
#    xlim=c(min(x), max(x)),
#    ylim=c(min(y), max(y))
#    yaxp=c(
#      floor  (min(y)),
#      ceiling(max(y)),
#      5
#   )
)

text(x, y, t, col='blue', adj=c(-0.2, -0.2), cex=0.8, bg='green')

z <- locator(1)
