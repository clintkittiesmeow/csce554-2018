
using DataFrames
df = DataFrame(ball   = ["B", "B", "B", "B", "T", "T", "T", "T"],
               driver = ["O", "O", "R", "R", "O", "O", "R", "R"],
               score  = [88,   90,  93,  91,  88,  91,  92,  94]);
categorical!(df, [:ball, :driver]);
describe(df)

using StatsModels
using GLM
lm1 = lm(@formula(score ~ driver), df)
lm2 = lm(@formula(score ~ ball), df)
f = @formula(score ~ ball*driver)
f = dropterm(f, :ball)
f = dropterm(f, :driver)
lm3 = lm(@formula(score ~ +(ball&driver)), df)
lm4 = lm(@formula(score ~ ball*driver), df)
