function y = tripinf(A,b)
    n = length(b);
    y =zeros(n,1);
    y(1) = b(1)/(A(1,1));
    for k=2:1:n
        s=0;
        for j=1:1:(k-1)
            s=s+A(k,j)*y(j);
        end
        y(k)=(b(k)-s)/A(k,k);
    end
end
        