
using CSV;
case0101 = CSV.read("./sleuth-data/case0101.csv");
#using DataArrays;
#case0101[:Score] = convert(DataArray{Float64}, case0101[:Score]);
intrinsic = filter(f -> f[:Treatment] == "Intrinsic", case0101);
extrinsic = filter(f -> f[:Treatment] == "Extrinsic", case0101);

using HypothesisTests;
intrinsic_arr = convert(Array{Float64}, intrinsic[:, 1]);
extrinsic_arr = convert(Array{Float64}, extrinsic[:, 1]);

test = EqualVarianceTTest(intrinsic_arr, extrinsic_arr)
mean(intrinsic_arr)
mean(extrinsic_arr)
pvalue(test)
pvalue(test, tail = :left)
pvalue(test, tail = :right)
