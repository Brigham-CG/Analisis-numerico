f = @(t) 8 + (t - 1).^ 2;

f1 = @(t, y) y * sin(t);

[t, y] = runge_kutta_4(f1, 0, 3, 5, 20);

yn = lagran2(t, y);

fyn = @(x) polyval(yn, x);

hold off;
hold on;

x = [-5: 0.1: 5];

plot(x, f(x), "blue"), grid;

fyf = @(x) fyn(x) - f(x);

p1 = secante(1, 0.0001, fyf)
p2 = secante(4, 0.0001, fyf)

area = trapecio(p1, p2, 100, fyf)



