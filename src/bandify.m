function[M] = bandify(M,p,q)
    for i = 1:size(M)
        for j = 1:size(M)
            if j>i+p || j<i-q
                M(i,j) = 0;
            end
        end
    end
end