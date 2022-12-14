function [t, y] = taylor_orden_2(f, ft, fy, t0, y0, T, p)
     
    h = T/p;
    y = zeros(1, p+1);
    t = zeros(1, p+1);
    t(1) = t0;
    y(1) = y0;

    for k = 2: p + 1
        t(k) = t(k - 1) + h;
        y(k) = y(k - 1) + h/2*(f(t(k - 1), y(k -1)) + f(t(k - 1) + h, y(k - 1) + h*f(t(k-1), y(k - 1)))); 
    end

    plot(t,y, 'b*'), grid
end
