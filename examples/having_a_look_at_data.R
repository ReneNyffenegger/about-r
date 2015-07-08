

# Dimension of data:
dim(iris)
# [1] 150   5


names(iris)
# [1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"


# Structure of data:
str(iris)
# 'data.frame':   150 obs. of  5 variables:
#  $ Sepal.Length: num  5.1 4.9 4.7 4.6 5 5.4 4.6 5 4.4 4.9 ...
#  $ Sepal.Width : num  3.5 3 3.2 3.1 3.6 3.9 3.4 3.4 2.9 3.1 ...
#  $ Petal.Length: num  1.4 1.4 1.3 1.5 1.4 1.7 1.4 1.5 1.4 1.5 ...
#  $ Petal.Width : num  0.2 0.2 0.2 0.2 0.2 0.4 0.3 0.2 0.2 0.1 ...
#  $ Species     : Factor w/ 3 levels "setosa","versicolor",..: 1 1 1 1 1 1 1 1 1 1 ...

cat("\n\n")

attributes(iris)
# $names
# [1] "Sepal.Length" "Sepal.Width"  "Petal.Length" "Petal.Width"  "Species"
# 
# $row.names
#   [1]   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18
#  [19]  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36
#  [37]  37  38  39  40  41  42  43  44  45  46  47  48  49  50  51  52  53  54
#  [55]  55  56  57  58  59  60  61  62  63  64  65  66  67  68  69  70  71  72
#  [73]  73  74  75  76  77  78  79  80  81  82  83  84  85  86  87  88  89  90
#  [91]  91  92  93  94  95  96  97  98  99 100 101 102 103 104 105 106 107 108
# [109] 109 110 111 112 113 114 115 116 117 118 119 120 121 122 123 124 125 126
# [127] 127 128 129 130 131 132 133 134 135 136 137 138 139 140 141 142 143 144
# [145] 145 146 147 148 149 150
# 
# $class
# [1] "data.frame"

cat("\n\n")

# First five rows of data:
head(iris)
#   Sepal.Length Sepal.Width Petal.Length Petal.Width Species
# 1          5.1         3.5          1.4         0.2  setosa
# 2          4.9         3.0          1.4         0.2  setosa
# 3          4.7         3.2          1.3         0.2  setosa
# 4          4.6         3.1          1.5         0.2  setosa
# 5          5.0         3.6          1.4         0.2  setosa
# 6          5.4         3.9          1.7         0.4  setosa

cat("\n\n")

# Last five rows of data:
tail(iris)
#     Sepal.Length Sepal.Width Petal.Length Petal.Width   Species
# 145          6.7         3.3          5.7         2.5 virginica
# 146          6.7         3.0          5.2         2.3 virginica
# 147          6.3         2.5          5.0         1.9 virginica
# 148          6.5         3.0          5.2         2.0 virginica
# 149          6.2         3.4          5.4         2.3 virginica
# 150          5.9         3.0          5.1         1.8 virginica
