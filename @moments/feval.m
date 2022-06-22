function c = feval(f, p)
% Evaluate vector of moments in polynomial p.

p = polynomial(p);

% find symbolic variables in p
vars = setdiff(p.varname, f.varname);

% collect monomials
% p(x) = c0 + c1*R(x)
[c0,c1,R] = collect(p, vars);

% project onto common basis
% mu: (c0 + c1*R) -> a0*c0 + a1*c1
c2 = poly2basis(f.poly, [1;R]);

% 06/16/2022 TC:
% poly2basis only works on scalar polynomials. A workaround in future is
%
% C = arrayfun(@(p) full(poly2basis(p,R)'), f.poly, 'UniformOutput', false);
% c1 = cell2mat(C);
%
% For now, I am keeping the scalar version as I am not sure about the side
% constraints of a multidimensional implementation (e.g., do we allow
% moments to act like matrices?).

% scalar product
% if f is a row and p a column vector, 
% return sum element-wise evaluation
% equals to trace of outer product
c = trace([c0 c1]*c2);

end
