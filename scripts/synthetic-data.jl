using Distributions
srand(357)
d = Normal(0.0, 1.0)
x1 = rand(d, 15)
# descriptive stats
mean(x1)
std(x1)
var(x1)
# estimate parameters
fit(Normal, x1)

using StatsBase
summarystats(x1)
# std error of the mean
sem(x1)

using StatPlots
plot(d)
plot(x1)

using HypothesisTests
t1 = OneSampleTTest(x1, 0.0)
t2 = OneSampleTTest(x1, 0.1)
t3 = OneSampleTTest(x1, 0.4)
