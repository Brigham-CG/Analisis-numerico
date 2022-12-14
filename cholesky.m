function [u,z] = cholesky(A,b)

    n=length(A);
 
    for k=1:n
        suma1=0;
        for p=1:k-1
            suma1=suma1+L(k,p)*u(p,k);
        end
        L(k,k)=sqrt(A(k,k)-suma1);
        u(k,k)=L(k,k); 
        for i=k+1:n
            suma2=0;
            for q=1:k-1
                suma2=suma2+L(i,q)*u(q,k);
            end
            L(i,k)=(A(i,k)-suma2)/L(k,k); 
        end
        for j=k+1:n
            suma3=0;
            for r=1:k-1
                suma3=suma3+L(k,r)*u(r,j);
            end
            u(k,j)=(A(k,j)-suma3)/L(k,k); 
        end
    end
    
    for i=1:n
        suma=0;
        for p=1:i-1
            suma=suma+L(i,p)*z(p);
        end
        z(i)=(b(i)-suma)/L(i,i); 
    end
end