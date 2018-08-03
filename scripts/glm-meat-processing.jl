
using CSV;
using DataFrames
case0702 = CSV.read("./sleuth-data/case0702.csv");
names(case0702)
case0702 = hcat(case0702, DataFrame(LogHours = log.(case0702[:Time])))


using GLM;
x = lm(@formula(pH ~ LogHours), case0702)
