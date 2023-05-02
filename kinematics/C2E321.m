function q = C2E321(C)

	% C2E321
	% 	
	% 	q = C2E321(C) calculates the (3-2-1) Euler angle set
	% 	from the 3x3 direction cosine matrix C

	if !isequal(size(C),[3 3])
		error('C is not a 3x3 matrix')
	end

	q = [ atan2(C(1,2),C(1,1));
				asin(-C(1,3));
				atan2(C(2,3),C(3,3)) ];
