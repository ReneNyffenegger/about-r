#
#  https://stackoverflow.com/a/1296434/180275
#
url <- paste0(
       'https://random.org/integers/',
      '?num=100'                     , # Download 100 numbers
      '&base=10'                     , # with base 10
      '&min=0'                       , # in the range of 0 …
      '&max=100'                     , # 100
      '&col=2'                       , # Two columns
      '&format=plain'                , # text mode
      '&rnd=new'
    );

tab <- read.table(url);
