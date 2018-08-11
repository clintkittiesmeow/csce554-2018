using HypothesisTests;
using Distributions;
srand(357);
sample1 = rand(Normal(1), 10);

using StatPlots;
scatter([sample1], ylims=[-2, 3], leg = false)

test1 = OneSampleTTest(sample1)

pvalue(test1, tail = :both)  # two-sided
pvalue(test1, tail = :left)  # one-sided, not significant
pvalue(test1, tail = :right) # one-sided, very significant
confint(test1, tail=:both)  # 95% conf interval
confint(test1, tail=:left)  # 95% conf interval
confint(test1, tail=:right) # 95% conf interval
confint(test1, 0.01, tail=:both) # 99% conf interval

# compute one-sided p-value for a specific t-statistic
# for example above
pvalue_one_sided = 1 - cdf(TDist(9), 3.352)
# compute two-sided p-value for a specific t-statistic (difference, NOT less than
# or greater than hypothesis)
pvalue_two_sided = 2 * pvalue_one_sided
