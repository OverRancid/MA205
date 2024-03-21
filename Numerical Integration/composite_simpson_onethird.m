function I = composite_simpson_onethird (f, a, b, n)
    % finds the definite integral of f over [a, b] using n+1 points one-third's composite Simpson.
    h = (a+b)/n;
    I = h / 3 * (f(a) + f(b));
    for  i = 1: n/2
        I = I + 4 * h * f(a + (2 * i - 1)*h) / 3;
        if i ~= n/2
            I = I + 2 * h * f(a + 2 * i * h)/ 3;
        end
    end
end