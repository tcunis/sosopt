function f = mldivide(a,b)
% Divide vector of moments by constant matrix.

if isdouble(a)
    f = moments(b.poly / a);
else
    error('Cannot divide by vector of moments.')
end

end