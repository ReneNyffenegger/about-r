library(RODBC);

rodbc_con <- odbcDriverConnect('driver={SQL Server};server=OMIS-NC-08;database=tq84_db;trusted_connection=true')

res <- sqlQuery(rodbc_con, 'select * from information_schema.tables');

res;
