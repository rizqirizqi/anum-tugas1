function [x] = backward(A,y)
	n=length(y);	
	x=zeros(n,1);
	x(n) = y(n) / A(n,n);
	for i = n-1:-1:1
	   sum = 0;
       for j = n:-1:i+1
           sum = sum + (A(i,j) * x(j));
       end
       x(i) = (y(i) - sum) / A(i,i);
    end 
end