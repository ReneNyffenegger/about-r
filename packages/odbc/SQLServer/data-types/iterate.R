while (! dbHasCompleted(src_data)) {
   src_rec <- dbFetch(src_data, 1); 
   print(str(src_rec));
}
#
#   'data.frame':	1 obs. of  9 variables:
#    $ col_integer  : int 42
#    $ col_float    : num 42.4
#    $ col_real     : num 42.4
#    $ col_varchar  : chr "Ren<e9>"
#    $ col_nvarchar : chr "René"
#    $ col_date     : chr "2005-05-25"
#    $ col_datetime : POSIXct, format: "2006-06-26 06:07:08"
#    $ col_datetime2: chr "2007-07-27 07:08:09.1230000"
#    $ col_time     : chr "09:10:11.0000000"
