function f = newton_backward_difference(X, Y)
    % generates a polynomial satisfying p(X) = Y using Newton's backward differences.
    syms f(x) t(x)
    n = length(Y);
    f(x) = Y(n);
    res = zeros(n, n-1);
    res = [Y' res];

    for j = 2: n
        for i = n-j+1: -1: 1
            res(i, j) = (res(i+1, j-1) - res(i, j-1)) / (X(i+j-1) - X(i));
        end
        t(x) = res(n-j+1, j);
        for i = n: -1: n-j+2
            t(x) = t(x) * (x - X(i));
        end
        f(x) = f(x) + t(x);
    end
end