library(ggswissmaps)

for (n in c(
    'g1l15'     ,  # l = Land - Borders of Switzerland
    'g1b15'     ,  # b = Bezirke
    'g1k15'     ,  # k = Kantone
    'g1g15'     ,  # g = Gemeinden                      | g one g one five
    'g1r15'     ,  # r = Regionen?
    'g1s15'     ,  # s = Seen - The lakes of Switzerland
    'g1g15_encl',  # the two enclaves into Switzerland
    'g1g15_li'     # Liechtenstein
   )
) {


   png(paste0(Sys.getenv('github_top_root'), 'about/r/packages/ggswissmaps/img/', n, '.png'),
       width = 400,
       height= 400
   );

   print(maps2[[n]]);   # g one be one five
   dev.off();

}
