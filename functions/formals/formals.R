func <- function (paramOne, paramTwo = 42, paramThree = 'hello World') {
  NULL; 
}

params <- formals(func);
typeof(params);
#
#  pairlist


class(params);
#
#  pairlist

for (param in names(params)) {
  cat(param, ': ', params[[param]], "\n");
}
#
#  paramOne :   
#  paramTwo :  42 
#  paramThree :  hello World 
