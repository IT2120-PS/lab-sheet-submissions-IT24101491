### 1. Learning platform (Binomial)
n <- 50
p <- 0.85

# Distribution: Binomial(n=50, p=0.85)
# P(X >= 47)
prob_geq_47 <- 1 - pbinom(46, n, p)
prob_geq_47


### 2. Call center (Poisson)
lambda <- 12   # average calls per hour

# (i) Random variable: X = number of calls per hour
# (ii) Distribution: Poisson(λ=12)

# (iii) P(X = 15)
prob_15 <- dpois(15, lambda)
prob_15

