#
#  S.a. -> read.csv()
#

col_1 <-  c(   1 ,    2 ,    3 )
col_2 <-  c("foo", "bar", "baz")

c <- cbind(col_1, col_2)

colnames(c) <- c("Num", "Ident")

write.csv(c, file="written.csv", row.names=FALSE)

file.show("written.csv")
# "Num","Ident"
# "1","foo"
# "2","bar"
# "3","baz"
