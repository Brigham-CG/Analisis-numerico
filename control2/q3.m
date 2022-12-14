f1 = @(t, y) y .* sin(t + y);
f2 = @(t, y) t .* cos(t - 4.*y);

hold on;

[t1, y1] = runge_kutta_4(f1, 0, pi/4, 5, 15);
[t2, y2] = runge_kutta_3(f2, 0, pi/3, 5, 15);

ecu1 = lagran2(t1, y1);
ecu2 = lagran2(t2, y2);

fy1 = @(x) polyval(ecu1, x);
fy2 = @(x) polyval(ecu2, x);

fyf = @(x) fy1(x) - fy2(x);

p1 = secante(0.5, 0.0001, fyf)
p2 = secante(3, 0.0001, fyf)

area = trapecio(p1, p2, 100, fyf)

