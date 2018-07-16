using Distributions
srand(357)
d1 = Normal(0,1)
d2 = Normal(5,1)
x1 = rand(d1, 15)
x2 = rand(d2, 15)
# estimate parameters for each "sample"
fit(Normal, x1)
fit(Normal, x2)

using StatPlots
plot(d1)
plot(d2)

using HypothesisTests
t1 = OneSampleTTest(x2, x1, 0)
t2 = OneSampleTTest(x2, x1, 5)
