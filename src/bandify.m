function[banded] = bandify(M,p,q)
    for i = 1:size(M)
        for j = 1:size(M)
            if j>i+p
                M(i,j) = 0;
            end
            if j<i-q
                M(i,j) = 0;
            end
        end
    end
    banded = M;
end