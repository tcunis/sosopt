function f = subsasgn(f,L,b)
% Subscripted assignment.

switch L(1).type
    case '()'
        if length(L) > 1
            tmp = subsref(f,L(1));
            b = subsasgn(tmp,L(2:end),b);
        end
        
        p = subsasgn(f.poly,L(1),b.poly);
        f = moments(p);
        
    otherwise
        f = builtin('subsref',f,L,b);
end

end