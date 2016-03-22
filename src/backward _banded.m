function [x] = backward(A,y,p,q)
	n=length(y);	
	x=zeros(n,1);
	x(n) = y(n) / A(n,n);
	for i = n-1:-1:1
	   sum = 0;
       for j = min(p+i,n):-1:i+1
           sum = sum + (A(i,j) * x(j));
       end
       x(i) = (y(i) - sum) / A(i,i);
    end 
end

function [new_i] = calc_i(i, j, p)
    new_i = i - j + p + 1;
end