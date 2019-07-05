expr <- '7 * 6';
parsed <- parse(text = expr);
typeof(parsed);
#
#  "expression"

print(parsed);
#
#  expression(7 * 6)

eval(parsed);
#
#  42
