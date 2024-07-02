#----------------------------------#
#     Review of Basic Concepts     #
#                                  #
#           Dr Aric LaBarr         #
#----------------------------------#

# Needed Libraries for Analysis #
install.packages("stats")

library(stats)

# Load Needed Data Sets #
# Replace the ... below with the file location of the data sets #
# Be careful, your file delimiters should be "/", NOT "\" #
setwd("C:/Users/deepa/Downloads/Review of Basic Concepts")

attentimes <- read.csv(file = "attentimes.csv", header = TRUE)
benzene <- read.csv(file = "benzene.csv", header = TRUE)
dietstudy <- read.csv(file = "dietstudy.csv", header = TRUE)

# Confidence Intervals #
t.test(x = attentimes$ATTIME, conf.level = 0.99)

# Hypothesis Testing #
t.test(x = benzene$Benzene, mu = 1, alternative = "greater")

# Differences Between Means / Variances #
var.test(WTLOSS ~ DIET, data = dietstudy)
t.test(WTLOSS ~ DIET, alternative = "two.sided", var.equal = TRUE, data = dietstudy)
