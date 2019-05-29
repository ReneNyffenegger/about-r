fileUrl <- 'https://raw.githubusercontent.com/ReneNyffenegger/about-r/master/functions/download.file.R';

dest <- paste0(Sys.getenv('TEMP'), '/download.file.R');
download.file(fileUrl, destfile = dest);

fileContent <- readLines(dest);

writeLines(fileContent);
