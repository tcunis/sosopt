function f = horzcat(varargin)
% Horizontal concatenation of moments.

p = cellfun(@(a) a.poly, varargin, 'UniformOutput', false);

f = moments(horzcat(p{:}));

end