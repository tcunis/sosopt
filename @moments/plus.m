function f = plus(a,b)
% Add two vectors of moments and combine common terms.

f = moments(a.poly + b.poly);

end