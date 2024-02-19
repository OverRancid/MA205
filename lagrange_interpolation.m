function f = lagrange_interpolation(X, Y)
    % finds polynomial f satisfying f(X) = Y using Lagrange interpolation method
    syms f(x) l(x)
    f(x) = 0;
    n = size(X, 2);
    
    for i = 1:n
        l(x) = Y(i);
        for j = 1:n
            if j ~= i
                l(x) = l(x) * (x - X(j))/(X(i) - X(j));
            end
        end
        f(x) = f(x) + l(x);
    end
end
