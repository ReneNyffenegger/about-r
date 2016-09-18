# tempfile() does not generate a file, it returns
# the name for a usable file:
temp_file_name <- tempfile()

file_handle <- file(temp_file_name)

cat("\nWriting to ", temp_file_name, '\n')
writeLines(c('first line', "second line"), file_handle)

cat("\nshowing content of file:\n")
file.show(temp_file_name)

cat("\n\nGoing to sleep for a few seconds so that")
cat("\nthe content of the file can be checked.")
cat("\nThe file will be destroyed after the script finishes")
Sys.sleep(20)

close(file_handle)
