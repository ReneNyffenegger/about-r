@rem
@rem  Write known.csv, unknown.csv and correct.txt
@rem
@perl knn_write_csv.pl

@rem
@rem  Let r write guessed.txt
@rem
@%PATH_R%\r --ess -q -f knn.R

@rem
@rem  Diff correct.txt and guessed.txt
@rem
@perl diff_correct_guessed.pl
