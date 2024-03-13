function f = hermite_interpolation(X, Y, dY)
    % generates a polynomial satisfying p(X) = Y and p'(X) = dY using Hermite interpolation
    syms f(x) l(x) A(x) B(x) Dl(x)

    n = length(X);
    f(x) = 0;

    for i = 1: n
        l(x) = 1;
        for j = 1: n
            if i ~= j
                l(x) = l(x) * (x - X(j)) / (X(i) - X(j));
            end
        end
        Dl(x) = diff(l);
        
        A(x) = (1 - 2 * (x - X(i)) * Dl(X(i)) ) * l(x) ^ 2;
        B(x) = (x - X(i)) * l(x) ^ 2;

        f(x) = f(x) + A(x) * Y(i) + B(x) * dY(i);
    end
end
