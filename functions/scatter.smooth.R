X11()


weekdays = c('So', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa')

d <- data.frame(
  weekday = factor(rep(weekdays, 5), weekdays),
  value   = nchar(c(
 '##'                 , # So
 '########'           , # Mo
 '#############'      , # Tu
 '######'             , # We
 '############'       , # Th
 '###############'    , # Fr
 '###'                , # Sa
# ---
 '####'               , # So
 '####'               , # Mo
 '########'           , # Tu
 '#####'              , # We
 '###########'        , # Th
 '#########'          , # Fr
 '#####'              , # Sa
# ---
 '####'               , # So
 '######'             , # Mo
 '############'       , # Tu
 '####'               , # We
 '#############'      , # Th
 '##########'         , # Fr
 '###'                , # Sa
# ---
 '#'                  , # So
 '####'               , # Mo
 '##############'     , # Tu
 '####'               , # We
 '############'       , # Th
 '##############'     , # Fr
 '#######'            , # Sa
# ---
 '###'                , # So
 '######'             , # Mo
 '###########'        , # Tu
 '######'             , # We
 '#############'      , # Th
 '###########'        , # Fr
 '####'                 # Sa
 ))
)

scatter.smooth(d$value ~ d$weekday, col=gray(0.7), bty='n', xaxt='n')
axis(1, at=1:7, labels = levels(d$weekday))

z <- locator(1)
