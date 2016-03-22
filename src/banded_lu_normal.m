function [L, U] = banded_lu_normal(A,p,q)
    [n, n] = size(A);

    L= eye(n);
    U= zeros(n);
    for k = 1:n-1
        for i = k+1:min(k+q,n)
            L(i,k) = A(i,k) / A(k,k);
            for j = k:min(k+p,n)
                A(i,j) = A(i,j) - L(i,k) * A(k,j);
            end
        end
    end
    U = A;
end
