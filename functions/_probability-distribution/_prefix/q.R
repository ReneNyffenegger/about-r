prob  <- seq(0, 1, by=0.01);
quant <- qnorm(prob , mean_, sd_);

plot(
     prob            ,
     quant           ,
     type  = 'l'     ,
     lwd   =  3      ,
     col   ='#5533ff'
);
