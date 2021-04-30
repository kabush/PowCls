# Distribution 1 parameters
mu1 <- 5
sd1 <- 3

# Distribution 2 parameters
mu2 <- 6
sd2 <- 2

# Test parameters
alpha <- 0.05
power <- 0.8

# ----------------------------------------
# Compute using R pwr package
library(pwr)

# Effect size: Cohen's d
d <- (mu2-mu1)/sqrt(((n1-1)*sd1^2+(n2-1)*sd2^2)/(n1+n2-2))

# Solve for minimum sample-size per group
print(pwr.t.test(d=d,sig.level=alpha,power=power,alternative='two.sided'))

