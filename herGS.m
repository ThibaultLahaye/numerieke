function [Q,R] = klGS(A, repeat)

    % A a matrix.
    % Returns Q an ortho gonal matrix and R an
    % upper triangular matrix such that A = QR.

    [m,n] = size(A);
     
    Q = zeros(m,n);
    R = zeros(n);
    
    for j=1:n                               % Gram-Schmidt orthogonalization
        v = A(:,j);                                 % y begins as column j of A
        for re=1:repeat
            for i=1:j-1
                h = Q(:,i)' * A(:,j);              % modify A(:,j) to v for more accuracy
                v = v - R(i,j) * Q(:,i);                % subtract to projection (q^T*a)*a
                R(i,j) =  h;
            end
        end                                         % v is now perpendicular to all of q
        R(j,j) = (v' * v) ^ (1/2);
        Q(:,j) = v / R(j,j);                        % normalize v to be the next unit vector q
    end
    
    return
end