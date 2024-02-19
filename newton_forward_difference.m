function f = newton_forward_difference(X, Y)
    % generates a polynomial satisfying p(X) = Y using Newton's forward differences.
    syms f(x) t(x)
    f(x) = Y(1);
    n = length(Y);
    res = zeros(n, n-1);
    res = [Y' res];

    for j = 2: n
        for i = j: n
            res(i, j) = (res(i, j-1) - res(i-1, j-1)) / (X(i) - X(i-j+1));
        end
        t(x) = res(j, j);
        for i = 1: j-1
            t(x) = t(x) * (x - X(i));
        end
        f(x) = f(x) + t(x);
    end
end
