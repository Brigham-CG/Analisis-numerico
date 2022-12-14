function [t, y] = runge_kutta_2(f, t0, y0, T, p, w)
     
    h = T/p;
    y = zeros(1, p+1);
    t = zeros(1, p+1);
    t(1) = t0;
    y(1) = y0;

    for k = 2: p + 1
        t(k) = t(k - 1) + h;
        y(k) = y(k - 1) +h(1-w)*f(t(k - 1), y(k - 1) + h*w* f(t(k - 1) + 1/(2*w)*h, y(k - 1) + 1/(2*w) * h*f(t(k-1), y(k - 1))); 
    end

    plot(t,y, 'b*'), grid
end
