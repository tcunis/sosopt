function display(f,varargin)
% Displays dual operator.

if ~isequal(get(0,'FormatSpacing'),'compact') && nargin == 1
    disp(' ');
end

if isempty(f)
    disp([inputname(1) ' : () ->'])
    disp('  []')
    
elseif length(f) > 1
    [m,n] = size(f);
    for i2 = 1:n
        if min(m,n) > 1
            disp(['----  Column ' int2str(i2) ' ----------'])
            disp(' ')
        end
        for i1 = 1:m
            fij = moments(f.poly(i1,i2));
            display(fij,'(',int2str(i1),',',int2str(i2),')')
        end
    end
    
else
    
[c,R] = poly2basis(f.poly);

coeffs = mpvar('c',size(R));
p = coeffs'*R;

lhs = char(p);
rhs = char(c'*coeffs);

disp([inputname(1) varargin{:} ' : ' lhs{:} ' -> '])
disp(['  ' rhs{:}])

end

if ~isequal(get(0,'FormatSpacing'),'compact') && nargin == 1
    disp(' ');
end

end