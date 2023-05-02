function prv = C2PRV(C)
	if isequal(size(C), [3 3])
		phi 	= acos((trace(C)-1)/2);
		e_hat = [C(2,3) - C(3,2);
				 C(3,1) - C(1,3);
				 C(1,2) - C(2,1)]/(2*sin(phi));
		prv 	= phi*e_hat;
	else
		error('argument should be a 3x3 matrix.');
	end
