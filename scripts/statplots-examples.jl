using CSV, DataFrames, StatPlots
gr(size=(400,400))
case0102 = CSV.read("c:/julia/csce554-2018/sleuth-data/case0102.csv")
@df case0102 boxplot!(:Sex, :Salary)
