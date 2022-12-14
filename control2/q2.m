fu = @(u) + log(u^2 + 2);

f = @(t, y) trapecio(0 ,t, 100, fu);

[t, y] = runge_kutta_4(f, 0, 0.5, 5, 30);


 yf = newtonp(t, y);
 
 ff = @(x) polyval(yf, x);
 
 x = [0:0.1:2];
 
 plot(x,ff(x)), grid; 
 z = (polyval(yf, 4) - polyval(yf, pi/2))/ polyval(yf, exp(1)) + polyval(yf, sqrt(7))
 
 
 