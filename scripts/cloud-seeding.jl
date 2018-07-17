
using CSV
using DataFrames
using StatPlots
#gr(size=(250,400))
pyplot(size=(250,400))
case0301 = CSV.read("c:/julia/csce554-2018/sleuth-data/case0301.csv")
@df case0301 boxplot!(:Treatment, :Rainfall)
