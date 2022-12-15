function p = lagrange(x, y)
    n = length(x);
    p = zeros(1, n);
    for k = 1:n
        lk = [x(1:k-1), x(k+1:n)];
        lk = poly(lk);
        lk = lk/polyval(lk, x(k));
        p = p + y(k) * lk;
    end
end