function S = skew(x)
	if (length(x) == 3)
		S = [ 0    -x(3) x(2);
					x(3)  0   -x(1);
				 -x(2)  x(1) 0];
	elseif (length(x) == 1)
		S = [0 -x; x 0];
	else 
		error('argument must be a 1x1 or 3x1 vector.');
	end
end
