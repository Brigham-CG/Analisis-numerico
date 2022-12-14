function dx = derivada(f, x)
    h = 0.0001;
    dx = (f(x + h) - f(x-h))/h;
end
