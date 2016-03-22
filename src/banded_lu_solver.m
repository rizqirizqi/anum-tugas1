function [x] = banded_lu_solver(L,U,b,p,q)
	y = banded_forward(L,b,p,q);
	x = banded_backward(U,y,p,q);
end