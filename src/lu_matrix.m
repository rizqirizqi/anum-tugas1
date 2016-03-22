function [x] = lu_matrix(A,b)
	[B,P] = lu_factorisation(A);
    [n,~] = size(A); 
    temp = b;
    disp(b);
    disp(P);
    for i = 1:n
        b(i) = temp(P(i));
    end
	x = lu_solver(B,b);
end