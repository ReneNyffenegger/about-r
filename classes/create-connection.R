conn_one   <- stdin()
conn_two   <- stdout()
conn_three <- stderr()

class(conn_one)
# [1] "terminal"   "connection"

class(conn_two)
# [1] "terminal"   "connection"

class(conn_three)
# [1] "terminal"   "connection"
