function [B, p, q] = banded_compress(A)
    [n,n] = size(A);
    p = 0;
    q = 0;
    for i = 1:n
        for j = i:n
            if A(i,j) ~= 0 && p < j-i
                p = j-i;
            end
        end 
    end
    for i = 1:n
        for j = 1:i
            if A(i,j) ~= 0 && q < i-j
                q = i-j;
            end
        end 
    end
   
    B = zeros(p+q+1,n);

    for i = 1:n
        for j = 1:min(n,i+p)
            if A(i,j) ~= 0
                B(i - j + p + 1, j) = A(i,j);
            end
        end
    end
end
