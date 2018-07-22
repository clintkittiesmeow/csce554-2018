
using Plots;
p1 = plot(rand(100), leg = false);
p2 = plot(rand(100), leg = false);
p3 = plot(rand(100), leg = false);
p4 = plot(rand(100), leg = false);
plot(p1, p2, p3, p4)

using Distributions;
srand(357);
t1 = plot(TDist(5),  leg = false);
t2 = plot(TDist(10), leg = false);
t3 = plot(TDist(15), leg = false);
t4 = plot(TDist(47), leg = false);

using StatPlots;
plot(t1, t2, t3, t4)
params(TDist(5))
dof(TDist(10))

plot([TDist(2), TDist(5), TDist(8), TDist(10)], xlims=[-5,5], ylims=[0,0.4])

plot(TDist(2), xlims=[-5,5], ylims=[0,0.4]);
plot!(TDist(5));
plot!(TDist(8));
plot!(TDist(10))


x = linspace(0.0, 5.0, 100.0);
F1 = pdf.(FDist(1, 1), x);
F2 = pdf.(FDist(2, 1), x);
F3 = pdf.(FDist(5, 2), x);
F4 = pdf.(FDist(10, 1), x);
F5 = pdf.(FDist(100, 100), x);
plot(x, [F1, F2, F3, F4, F5], xlims=[0,5], xlims = [0,5], ylims=[0, 2.5])
