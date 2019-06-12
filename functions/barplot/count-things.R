things <- c(
    'socks' ,
    'chairs',
    'socks' ,
    'lamps' ,
    'chairs',
    'socks' ,
    'socks'
);

countOfThings <- table(things);

print(countOfThings);
#
# things
# chairs  lamps  socks 
#      2      1      4 

barplot(countOfThings);
