using PyPlot
x = linspace(0,2*pi,1000); y = sin.(3 * x + 4 * cos.(2 * x));
plot(x, y, color="red", linewidth=2.0, linestyle="--")

using Distributions;
srand(357);
F1 = FDist(1, 1);
F2 = FDist(2, 1);
F3 = FDist(5, 2);
F4 = FDist(10, 1);
F5 = FDist(100, 100);


x = linspace(0.0,5.0,100.0);
y = pdf.(F5, x);
plot(x, y)
