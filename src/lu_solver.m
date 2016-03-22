function [x] = lu_solver(L,U,b)
	y = forward(L,b);
	x = backward(U,y);
end