DataSourceName = 'Ora11'
UserID         = 'rene'
Password       = 'rene'

library(RODBC)

conn_odbc <- odbcConnect(dsn = DataSourceName, uid = UserID, pwd = Password)

result <- sqlQuery(conn_odbc, 'select * from dba_tables', errors = TRUE)

odbcClose(conn_odbc)

# str(result)

result[c('OWNER', 'TABLE_NAME', 'STATUS')]
