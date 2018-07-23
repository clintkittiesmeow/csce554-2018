
using CSV
using DataFrames
using StatPlots
using Distributions
gr(size=(250,400))
#pyplot(size=(250,400))
case0301 = CSV.read("c:/julia/csce554-2018/sleuth-data/case0301.csv")
@df case0301 boxplot!(:Treatment, :Rainfall, leg=false)
# filter out data of interest
unseeded = filter(f->f[:Treatment] == "Unseeded", case0301)
unseeded_arr = convert(Array{Float64}, unseeded[:, 1])
seeded = filter(f->f[:Treatment] == "Seeded", case0301)
seeded_arr = convert(Array{Float64}, seeded[:, 1])
# skewness and kurtosis
skewness(unseeded_arr)
kurtosis(unseeded_arr)
skewness(seeded_arr)
kurtosis(seeded_arr)
