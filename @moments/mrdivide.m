function f = mrdivide(a,b)
% Divide vector of moments by constant matrix.

if isdouble(b)
    f = moments(a.poly / b);
else
    error('Cannot divide by vector of moments.')
end

end