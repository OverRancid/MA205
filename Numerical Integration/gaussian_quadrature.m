function I = gaussian_quadrature (f, a, b, n)
    % finds the definite integral of f over [a, b] using n points gaussian quadrature (specific to n=2, 3)
    g = @(x) f((b-a)*x/2 + (a+b)/2);
    I = 0;

    if n == 2
        c = [1, 1];
        x = [-sqrt(1/3), sqrt(1/3)];
    elseif n==3
        c = [5/9, 8/9, 5/9];
        x = [-sqrt(3/5), 0, sqrt(3/5)];
    end

    for i = 1: n
        I = I + c(i) * g(x(i));
    end
    I = I * (b-a)/2;
end