
using CSV;
case0701 = CSV.read("./sleuth-data/case0701.csv");
names(case0701)
using GLM;
lm(@formula(Distance ~ Velocity), case0701)
lm(@formula(Distance ~ Velocity - 1), case0701)
