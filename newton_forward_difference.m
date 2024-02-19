function f = newton_forward_difference(X, Y)
    % generates a polynomial satisfying p(X) = Y using Newton's forward differences.
    syms f(x) t(x)
    f(x) = Y(1);
    n = length(Y);
    res = zeros(n, n-1);
    res = [X' Y' res];
    
    for i = 3: n+1
        for j = i-1: n
            res(j, i) = (res(j, i-1) - res(j-1, i-1)) / (res(j, 1) - res(j-i+2, 1));
        end
        t(x) = res(i-1, i);
        for j = 1: i-2
            t(x) = t(x) * (x - X(j));
        end
        f(x) = f(x) + t(x);
    end
end
