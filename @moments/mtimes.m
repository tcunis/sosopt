function f = mtimes(a,b)
% Scalar multiplication of a vector of moments.

if isa(a,'double')
    f = moments(a * b.poly);
elseif isa(b,'double')
    f = moments(a.poly * b);
else
    error('Cannot multiply two vectors of moments.')
end

end