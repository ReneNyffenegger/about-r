german <- ifelse(english == 'one'  , 'eins',
          ifelse(english == 'two'  , 'zwei',
          ifelse(english == 'three', 'drei',
          ifelse(english == 'four' , 'vier',
                 '?' ))))
