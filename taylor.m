function [t, y] = taylor(f, ft, fy, t0, y0, t, p)

    h = t/p;
    t = zeros(1, p + 1);
    y = zeros(1, p + 1);
    for k = 2:p+1
        t(k) = t(k-1)+h;
        y(k) = y(k-1) + f(t(k-1) + y(k - 1)) *h + h ^ 2/ 2 * (ft(t(k-1) , y(k-1)) + fy(t(k-1) , y(k-1))*f(t(k-1) , y(k-1)));
    end
    plot(x,y,'b*'), grid;
end
