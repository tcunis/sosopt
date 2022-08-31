function d = properint(a)
% Integration in all variables from zero to one, respectively.

a = polynomial(a);

% get polynomial info
acoef = a.coefficient;
adeg  = a.degmat;
sza   = a.matdim;

% integral of monomials
mprod = 1./prod(adeg+1,2);

% multiply with coefficients + reshape
d = full(reshape(mprod'*acoef, sza));

end
