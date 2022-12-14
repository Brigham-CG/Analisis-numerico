function p = lagran2(xt, yt)

    p = 0;
    n =length(xt);
    
    for k = 1:n
        raices = [];
        for j = 1:n
            if j~=k
                raices = [raices, xt(j)];
            end
        end
        l = poly(raices);
        l = l/polyval(l, xt(k));
        p = p + l*yt(k);
    end
end