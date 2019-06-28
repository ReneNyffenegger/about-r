if (dbExistsTable(sqlServer, 'r_dbi_test')) DBI::dbExecute(sqlServer, 'drop table r_dbi_test');

DBI::dbExecute (sqlServer, "
create table r_dbi_test (
   col_integer       integer    ,
   col_float         float      ,
   col_real          real       ,
   col_varchar       varchar(10),
   col_nvarchar     nvarchar(10),
   col_date          date       ,
   col_datetime      datetime   ,
   col_datetime2     datetime2  ,
   col_time          time
)
");
