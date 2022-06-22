function f = minus(a,b)
% Substract two vectors of moments and combine common terms.

f = moments(a.poly - b.poly);

end