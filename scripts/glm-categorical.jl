using CSV;
using DataFrames
using GLM;

case0101 = CSV.read("./sleuth-data/case0101.csv");
#names(case0101)
#showall(case0101)
describe(case0101)

categorical!(case0101, :Treatment);
levels(case0101[:Treatment])

case1002 = CSV.read("./sleuth-data/case1002.csv");
describe(case1002)
