
using DataFrames
df = DataFrame(ball   = ["B", "B", "B", "B", "T", "T", "T", "T"],
               driver = ["O", "O", "R", "R", "O", "O", "R", "R"],
               score  = [88,   90,  93,  91,  88,  91,  92,  94])
categorical!(df, :ball);
categorical!(df, :driver);
describe(df)

using GLM
x = lm(@formula(score ~ driver), df)
x = lm(@formula(score ~ ball), df)
x = lm(@formula(score ~ ball*driver), df)
