expr <- quote( 100 - (4 + 10) );

eval(expr);
#
#  86

show_tree <- function(e, indent) {
  for (i in 1:length(e)) {
     if (length(e[[i]]) == 1) {
        cat(paste0(strrep('  ', indent), e[[i]]), "\n")
     }
     else {
       show_tree(e[[i]], indent+1);
     }
  }
}

show_tree(expr, 0)
#
#  - 
#  100 
#    ( 
#      + 
#      4 
#      10 

#
#  With the tree, we can determine the position
#  of the plus in the tree:
#
expr[[3]][[2]][[1]]
#
#  `+`

#
#  Change the plus to a multiplication:
#
expr[[3]][[2]][[1]] <- quote(`*`);

expr
#
#  100 - (4 * 10)

eval(expr);
#
#  60
