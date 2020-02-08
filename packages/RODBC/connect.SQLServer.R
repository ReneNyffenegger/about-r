library(RODBC);

rodbc_con <- odbcDriverConnect('driver={SQL Server};server=TQ84-PC;database=tq84_db;trusted_connection=true')

res <- sqlQuery(rodbc_con, 'select * from information_schema.tables');

res;
