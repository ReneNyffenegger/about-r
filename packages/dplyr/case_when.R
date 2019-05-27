library(dplyr)

values <- c(9.1, 3.4, 5.6, 2.5, 7.9);

texts <- case_when(
          values <  0  ~   '<0' ,
          values <  3  ~   '<3' ,
          values <  5  ~  '3-5' ,
          values <  8  ~  '5-8' ,
          values < 10  ~ '8-10' ,
          TRUE         ~   '>10'
);

print(texts);
#
#  "8-10" "3-5"  "5-8"  "<3"   "5-8"
