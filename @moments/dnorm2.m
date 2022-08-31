function n = dnorm2(f)
% Compute squared dual norm of vector of moments.

% collect monomials
R = monomials(f);

% integrate Gram matrix
RR = properint(kron(R,R'));

% project onto basis
c = poly2basis(f.poly, R);

% compute operator norm
n = trace(c'/double(RR)*c);

end
