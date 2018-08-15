using CSV;
using DataFrames

case0101 = CSV.read("./sleuth-data/case0101.csv");
describe(case0101)

using GLM;
x = lm(@formula(Score ~ Treatment), case0101)

x = lm(@formula(Score ~ Treatment-1), case0101)

using HypothesisTests;
intrinsic = filter(f -> f[:Treatment] == "Intrinsic", case0101);
extrinsic = filter(f -> f[:Treatment] == "Extrinsic", case0101);

intrinsic_arr = convert(Array{Float64}, intrinsic[:, 1]);
extrinsic_arr = convert(Array{Float64}, extrinsic[:, 1]);

test = EqualVarianceTTest(intrinsic_arr, extrinsic_arr)
