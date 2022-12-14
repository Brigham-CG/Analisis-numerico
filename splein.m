function splein(x,y)
    
    xs = zeros(1, length(x)-1);
    ys = zeros(1, length(y)- 1);

    for i = 1:(length(x) - 1)
        m = (y(i+1) - y(i)) / (x(i + 1) - x(i));
        xs(i) = linspace(x(i), x(i + 1),1);
        ys(i) = m*(xs(i) - x(i)) * y(i);
        
    end
    
end