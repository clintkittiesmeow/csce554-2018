using Plots
using StatPlots
using CSV
# create a 2x2 grid, and map each of the 4 series to one of the subplots
plot(rand(100, 4), layout = 4)
case0301 = CSV.read("c:/julia/csce554-2018/sleuth-data/case0301.csv")

plot(case0301)
