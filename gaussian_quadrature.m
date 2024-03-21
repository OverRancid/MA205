function I = gaussian_quadrature (f, a, b, n)
    g = @(x) f(2*x/(b-a) - (a+b)/(b-a));
    I = 0;

    if n == 2
        c = [1, 1];
        x = [-1/sqrt(3), 1/sqrt(3)];
    elseif n==3
        c = [5/9, 8/9, 5/9];
        x = [-sqrt(3/5), 0, sqrt(3/5)];
    end

    for i = 1: n
        I = I + c(i) * g(x(i));
    end
end