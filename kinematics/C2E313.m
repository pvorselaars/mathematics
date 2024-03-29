function q = C2E313(C)

    % C2E313
    % 	
    % 	q = C2E313(C) calculates the (3-1-3) Euler angle set
    % 	from the 3x3 direction cosine matrix C

    if !isequal(size(C),[3 3])
        error('C is not a 3x3 matrix')
    end

    q = [ atan2(C(3,1),-C(3,2));
          acos(C(3,3));
          atan2(C(1,3),C(2,3)) ];
