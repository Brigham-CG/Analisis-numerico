t1 = [-2, -1 ,0, 1, 2, 3];
x1 = [2, 1, -1, 3, 4 , 1];

ecu1 = lagran2(t1, x1);

f = @(t, x) x.*polyval(ecu1, t);

[t, x] = runge_kutta_4(f, -2, pi/4, 5, 15);

y = lagran2(t, x);

w = polyval(y, sqrt(5)) + polyval(y, exp(2))