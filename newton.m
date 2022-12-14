function x_p = newton(x0, tol, g)
    
    x1= g(x0);
    k = 0;
    while abs(x1-x0) >= tol
        fprintf('%d, %4.8f, %4.8f\n', k, x0, x1);
        x0 = x1;
        x1 = g(x0);
        k = k + 1;
    end
    x_p = x1;
end