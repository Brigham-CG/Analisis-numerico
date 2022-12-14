function i = trapecio(a,b,n,f)
        
    i = 0;
    h = (b-a)/n;
    for k = 0: n-1
        i = f(a+k*h) +f(a+(k+1)*h) + i;
    end
    i = h/2*i;
end
