function [x] = lu_matrix(A,b)
	[L,U,P] = lu_factorisation(A);
	x = lu_solver(L,U,P*b);
end

