function C = EP2C(q)

    % EP2C
    %
    %   C = EP2C(q) calculates the direction cosine matrix C
    %   from the Euler parameters q. The first element of q
    %   should be the non-dimensional Euler parameter

    if !isequal(q,[4 1])
        error('q should be a 4x1 vector')
    end

    q0 = q(1);
    q1 = q(2);
    q2 = q(3);
    q3 = q(4);

    C = [ q0*q0+q1*q1-q2*q2-q3*q3 2*(q1*q2+q0*q3)           2*(q1*q3-q0*q2);
          2*(q1*q2-q0*q3)         q0*q0-q1*q1+q2*q2-q3*q3   2*(q2*q3+q0*q1);
          2*(q1*q3 + q0*q2)       2*(q2*q3-q0*q1)           q0*q0-q1*q1-q2*q2+q3*q3 ];
