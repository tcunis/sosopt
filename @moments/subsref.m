function b = subsref(f,L)
% Subscripted reference.

switch L(1).type
    case '()'
        % reference polynomial representation
        p = subsref(f.poly,L(1));
        b = moments(p);
        
        if length(L) > 1
            b = subsref(b,L(2:end));
        end

    otherwise
        builtin('subsref',f,L);
end

end