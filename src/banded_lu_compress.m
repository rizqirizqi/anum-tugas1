function [L, U] = banded_lu_compress(A)
    [A, p, q] = banded_compress(A)
    [~,n] = size(A);

    L= zeros(p+q+1,n);
    U= zeros(p+q+1,n);
    for k = 1:n-1
        L(calc_i(k,k,p),k) = 1;
        for i = k+1:min(k+q,n)
            L(calc_i(i,k,p),k) = A(calc_i(i,k,p),k) / A(calc_i(k,k,p),k);
            for j = k:min(k+p,n)
                A(calc_i(i,j,p),j) = A(calc_i(i,j,p),j) - L(calc_i(i,k,p),k) * A(calc_i(k,j,p),j);
            end
        end
    end
    L(calc_i(n,n,p),n) = 1;
    
    U = A;
end

function [new_i] = calc_i(i, j, p)
    new_i = i - j + p + 1;
end