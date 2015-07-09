
letters_       = paste0(paste0(letters               , collapse=""), paste0(LETTERS               , collapse=""), collapse="")
letters_rot_13 = paste0(paste0(letters[c(14:26,1:13)], collapse=""), paste0(LETTERS[c(14:26,1:13)], collapse=""), collapse="")

# letters_
# letters_rot_13

str = "This String will be ROT 13'ed"

str_rot_13 = chartr(letters_, letters_rot_13, str)
str_rot_13
# [1] "Guvf Fgevat jvyy or EBG 13'rq"

str_back   = chartr(letters_, letters_rot_13, str_rot_13)
str_back
# [1] "This String will be ROT 13'ed"


