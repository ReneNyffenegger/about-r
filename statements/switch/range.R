opinion <- 7;

txt <- switch(
          findInterval(
              opinion, c(
                1, 2.5,
                   4.5,
                   6.5,
                   8.5,
                  10.5)
         ),
         'Strongly disagree',
         'Disagree'         ,
         'Neutral'          ,
         'Agree'            ,
         'Strongly agree'
);

print(paste(opinion, 'corresponds to', txt));
#
#  7 corresponds to Agree
