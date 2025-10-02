
setwd("C:\Users\pulina\Downloads\Lab 09")

#Generate the random sample
set.seed(123)   # for reproducibility
baking_time <- rnorm(25, mean = 45, sd = 2)
baking_time


# Perform one-sample t-test
t.test(baking_time, mu = 46, alternative = "less")
