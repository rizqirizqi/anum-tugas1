function [L, U, P] = pivotingLU(A)
    n = size(A,1);
    Ak = A;
    L = eye(n);
    U = zeros(n);
    P = eye(n);
    for k = 1:n-1
        [~,r] = max(abs(Ak(k:end,k)));
        r = n-(n-k+1)+r;
        Ak([k r],:) = Ak([r k],:);
        P([k r],:) = P([r k],:);
		%L([k r],:) = L([r k],:);
        
        disp(Ak);
        for i = k+1:n
            L(i,k) = Ak(i,k) / Ak(k,k);
            for j = 1:n
                U(k,j) = Ak(k,j);
                Ak(i,j) = Ak(i,j) - L(i,k)*Ak(k,j);
            end
        end
    end
    U(:,end) = Ak(:,end);
return