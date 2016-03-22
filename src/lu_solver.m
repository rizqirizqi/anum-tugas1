function [x] = lu_solver(B,b)
	y = forward(B,b);
	x = backward(B,y);
end