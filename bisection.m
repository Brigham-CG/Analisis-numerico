function m = bisection(a, b , tol, f)

    k = 0;
    while abs(b -a) > tol
        m = (a + b)/2;
        fprintf('%d, %4.8f, %4.8f, %4.11f\n', k, a, b, m);
        if f(a) * f(m) < 0
            b = m;
        else
            a = m;
        end
        k = k + 1;
    end
end