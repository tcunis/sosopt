function f = vertcat(varargin)
% Vertical concatenation of moments.

p = cellfun(@(a) a.poly, varargin, 'UniformOutput', false);

f = moments(vertcat(p{:}));

end