function [t, y] = runge_kutta_3(f, t0, y0, T, p)
    
    h = T/p;
    y = zeros(1, p+1);
    t = zeros(1, p+1);
    t(1) = t0;
    y(1) = y0;

    for k = 2: p + 1
        t(k) = t(k - 1) + h;
        
        k1 = h*f(t(k - 1), y(k - 1));
        k2 = h*f(t(k - 1) + 1/2*h, y(k - 1) + 1/2*k1);
        k3 = h*f(t(k - 1) + 3/4*h, y(k - 1) + 3/4*k2);
        y(k) = y(k - 1) + 2/9*k1 + 1/3*k2 + 4/9*k3;
    end

    plot(t,y, 'r*'), grid
end