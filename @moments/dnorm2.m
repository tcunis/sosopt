function n = dnorm2(f)
% Compute squared dual norm of vector of moments.

% collect monomials & basis
[c,R] = poly2basis(f.poly);

% integrate Gram matrix
RR = outer_pnorm2(R);

% compute operator norm
n = trace(c'/double(RR)*c);

end
