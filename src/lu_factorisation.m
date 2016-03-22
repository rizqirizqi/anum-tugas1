function [L, U, P] = lu_factorisation(A)
    [m, n] = size(A);
    if (m ~= n) 
        throw(MException('ERR:MATRIXNOTSQUARE', 'Inputed Matrix Not Square'));
    end
    L = eye(n);
    P = eye(n);
    for k = 1:n-1
        [c, m] = max(abs(A(k:n,k)));
        m = m + k - 1;
        if c == 0
            throw(MException('ERR:PIVOTFAILED', 'Pivoting Failed'));
        end
        
        A([k m],:) = A([m k],:);
        P([k m],:) = P([m k],:);
        L([k m],1:k-1) = L([m k],1:k-1);
        
        for i = k+1:n
            L(i,k)= A(i,k) / A(k,k);
            for j = k:n
                A(i,j) = A(i,j) - L(i,k) * A(k,j);
            end
        end
        %disp(L);
    end
    U = A;
end

