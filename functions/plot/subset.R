df <- read.csv(text =
"year,item,val
2014,foo,9
2014,bar,18
2014,baz,12
2015,foo,6
2015,bar,19
2015,baz,11
2016,foo,8
2016,bar,17
2016,baz,11
2017,foo,7
2017,bar,17
2017,baz,12
2018,foo,8
2018,bar,15
2018,baz,14
2019,foo,7
2019,bar,16
2019,baz,13"
);

par(mar=rep(4.2,4));

with(
   df[df$item == 'baz', ],
   plot(
     year          ,
     val           ,
     type = 'l'    ,
     lwd  =  3     ,
     col  = 'blue' ,
     xlab = 'Year' ,
     ylab = 'Value'
   )
);
