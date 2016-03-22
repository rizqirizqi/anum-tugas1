function [x] = backward(A,y)
	n=length(y);	
	
	x=zeros(n,1);
	x(n) = y(n) / A(n,n);
	for i=n-1:-1:1
	   x(i)=(y(i)-A(i,i+1:n)*x(i+1:n))/A(i,i);
	end
end