function x1 = secante(x0, tol, f)
    x1 = x0 -f(x0) / derivada (f, x0);
    k = 0;
    while abs(x1 - x0) > tol
        fprintf ("%d, %4.8f, %4.8f\n", k, x0, x1);
        x0 = x1;
        x1 = x0 -f(x0)/derivada(f, x0);
        k = k + 1;
    end
end