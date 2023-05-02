function C = E3212C(q)

	% E3212C
	%
	%		C = E3212C(q) computes the direction
	%		cosine matrix for 3-2-1 Euler angles.
	%		q must be a 3x1 vector of Euler angles.
	%
	
	if !isequal(size(q),[3 1])
		error('q is not a 3x1 vector')
	end

	sq1 = sin(q(1));
	cq1 = cos(q(1));
	sq2 = sin(q(2));
	cq2 = cos(q(2));
	sq3 = sin(q(3));
	cq3 = cos(q(3));

	C   = [ cq2*cq1								cq2*sq1								-sq2;
					sq3*sq2*cq1 - cq3*sq1	sq3*sq2*sq1 + cq3*cq1	sq3*cq2;
					cq3*sq2*cq1 + sq3*sq1 cq3*sq2*sq1 - sq3*cq1 cq3*cq2];

