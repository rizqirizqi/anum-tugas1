function [x] = forward_banded(L,b,p,q)
	n=length(b);
    x=zeros(n,1);
    
	x(1) = b(1)/L(calc_i(1,1,p),1);
	for i=2:n
		sum=0;
        disp(max(1,i-q));
		for j=max(1,i-q):i-1
			sum=sum+L(calc_i(i,j,p),j)*x(j);
		end
		x(i)=(b(i)-sum)/L(calc_i(i,i,p),i);
    end
end

function [new_i] = calc_i(i, j, p)
    new_i = i - j + p + 1;
end