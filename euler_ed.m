function [t,y] = euler_ed(f, t0, y0, t, p)

    h = t/p;
    t = zeros(1,p+1);
    y = zeros(1, p+1);
    t(1) = t0;
    y(1) = y0;
    for k=2:p+1
        t(k) = t(k-1) + h;
        y(k) = y(k-1) + h*f(t(k-1), y(k-1));
    end
    plot(t,y, 'black*'), grid;
end

