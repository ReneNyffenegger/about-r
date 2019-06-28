DBI::dbExecute(sqlServer, "
insert into r_dbi_test values (
   42                            ,  -- integer
   42.42                         ,  -- float
   42.42                         ,  -- real
  'René'                         ,  -- varchar
 N'René'                         ,  -- nvarchar
  '2005-05-25'                   ,  -- date
  '2006-06-26T06:07:08.123'      ,  -- datetime
  '2007-07-27T07:08:09.123'      ,  -- datetime2
  '09:10:11'                        -- time
)
");

