crp <- colorRampPalette(c('red', 'blue', 'yellow'))

typeof(crp)
# [1] "closure"

pal <- crp(20)
typeof(pal)
# [1] "character"

length(pal)
# [1] 20

pal
#  [1] "#FF0000" "#E4001A" "#C90035" "#AE0050" "#93006B" "#780086" "#5D00A1"
#  [8] "#4300BB" "#2800D6" "#0D00F1" "#0D0DF1" "#2828D6" "#4343BB" "#5D5DA1"
# [15] "#787886" "#93936B" "#AEAE50" "#C9C935" "#E4E41A" "#FFFF00"
