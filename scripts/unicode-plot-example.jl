using UnicodePlots
lineplot([cos, sin], -pi/2, 2pi)

using CSV
case0101 = CSV.read("../sleuth-data/case0101.csv")
intrinsic = filter(f->f[:Treatment] == "Intrinsic", case0101)
