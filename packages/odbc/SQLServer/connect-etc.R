library(odbc)

odbc_con <- dbConnect(odbc(),
               driver   = "SQL Server" ,
               server   = Sys.getenv("COMPUTERNAME"),
               database ='tq84_db'
#              UID      ='Rene'   ,
#              PWD      = rstudioapi::askForPassword("Database password")
#              Port     = 1433
#              encoding = …
);

#
#   Get some information about connection.
#
dbInfo <- dbGetInfo(odbc_con);
print(dbInfo$dbms.name   );
print(dbInfo$db.version  );
print(dbInfo$odbc.version);

#
#   List dbo tables
#
dbListTables(odbc_con, schema_name = 'dbo');

#
#  List tables that start with t:
#
dbListTables(odbc_con, schema_name = 'dbo', table_name = 't%');

#
#  Create a table from a data frame …
#
df <- data.frame(
       col_1 = c(     1,     2 ,      3 ,     4 ),
       col_2 = c('one' , 'two' , 'three', 'four'),
       col_3 = c('eins', 'zwei', 'drei' ,  NA   ));

#
# … and write it into an SQL table. First, we
# need to check if the table already exists:
#
if (dbExistsTable(odbc_con, 'r_dataframe')) {
   print('Table already exists! Dropping it.');
   dbRemoveTable(odbc_con, 'r_dataframe');
}

dbWriteTable(odbc_con, 'r_dataframe', df);

#
#  Show column names of new table written:
#
dbListFields(odbc_con, 'r_dataframe');


#
#   Read content of a table into a dataframe.
#
df <- NA;
df <- dbReadTable(odbc_con, 'r_dataframe');
df;

#
#   Select with SQL statement.
#
stmt = dbSendQuery(odbc_con, 'select col_2, col_3 from r_dataframe where col_1 > 1');

#
#   Show information (name and type) of
#   columns returned by SQL statement.
#
dbColumnInfo(stmt);
#
#    name type
#   col_2   12
#   col_3   12
#

#
#  Fetch two records
#
res  = dbFetch(stmt, n = 2);
res;

#
#  Fetch remaining records.
#
res  = dbFetch(stmt);
res;


#
#  Apparently, statements that are created
#  with dbSendQuery needs to be cleared
#  after use (Otherwise, we get the
#  warning «In new_result … Cancelling previous query».
#
dbClearResult(stmt);

#
#  Use dbGetQuery() instead of
#  dbSendQuery() followed by dbFetch():
#
res  <- dbGetQuery(odbc_con, 'select col_1, col_2 from r_dataframe');
res;
