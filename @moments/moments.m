classdef moments
% Vector of moments representing polynomial dual variables.

properties (Access=private)
    poly; % representation as polynomial
end

properties (Dependent)
    varname;
    maxdeg;
    mindeg;
end

methods
    function f = moments(varargin)
        % Create operator as vector of moments.
        f.poly = polynomial(varargin{:});
    end
    
    function v = get.varname(f)
        % Return variable names of monomials.
        v = f.poly.varname;
    end
    
    function d = get.mindeg(f)
        % Return minimal degree of monomials.
        d = f.poly.mindeg;
    end
    
    function d = get.maxdeg(f)
        % Return maximal degree of monomials.
        d = f.poly.maxdeg;
    end
    
    function z = monomials(f)
        % Return vector of moments.
        z = monomials(f.poly);
    end
    
    function varargout = size(f,varargin)
        % Return dimensions of operator.
        [varargout{1:nargout}] = size(f.poly,varargin{:});
    end
    
    function m = length(f)
        % Return length of operator.
        m = length(f.poly);
    end
    
    function tf = isempty(f)
        % Check wether operator is empty.
        tf = isempty(f.poly);
    end
    
    function ind = end(f,k,n)
        % Return end index for operator.
        ind = feval('end',f.poly,k,n);
    end
end

end
