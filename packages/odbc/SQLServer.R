library(odbc)

odbc_con <- dbConnect(odbc(),
               driver   = "SQL Server" ,
               server   = Sys.getenv("COMPUTERNAME"),
               database ='tq84_db'
#              UID      ='Rene'   ,
#              PWD      = rstudioapi::askForPassword("Database password")
#              Port     = 1433
#              encoding = …
)

#
#   Get some information about connection.
#
dbGetInfo(odbc_con);

#
#   List dbo tables
#
dbListTables(odbc_con, schema_name = 'dbo');

#
#  List tables that start with t:
#
dbListTables(odbc_con, schema_name = 'dbo', table_name = 't%');

#
#  Create a table from a data frame:
#
df <- data.frame(
       col_1 = c(     1,     2 ,      3 ,     4 ),
       col_2 = c('one' , 'two' , 'three', 'four'),
       col_3 = c('eins', 'zwei', 'drei' ,  NA   ));

if (dbExistsTable(odbc_con, 'r_dataframe')) {
   print('Table already exists!');
} else {
   dbWriteTable(odbc_con, 'r_dataframe', df);
}


#
#   Read content of a table into a dataframe.
#
df <- NA;
if (dbExistsTable(odbc_con, 'r_dataframe')) {
  df <- dbReadTable(odbc_con, 'r_dataframe');
  df;
} else {
   print('There is no table named r_dataframe.');
}
