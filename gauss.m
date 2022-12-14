function [c,d] = gauss(A, b)
    
    c=[A,b];
    n = length(A);
    for i = 1:n-1
        for j=i+1:n
            c(j,:) = c(j,:) + c(i,:)*(-c(j,i)/c(i,i));
        end
    end
    d = c(:,n+1);
    c = c(:,1:n); 
 end