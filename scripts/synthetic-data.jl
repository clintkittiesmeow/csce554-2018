using Distributions
srand(357)
d = Normal()
x1 = rand(d, 1000)
# descriptive stats
mean(x1)
std(x1)
var(x1)
# estimate parameters
fit(Normal, x1)

using StatsBase
summarystats(x1)

using StatPlots
plot(d)
plot(x1)

using HypothesisTests
t1 = OneSampleTTest(x1)
t2 = OneSampleTTest(x1, 1.0)
