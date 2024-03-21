function I = simpson(f, a, b)
    % finds the definite integral of f over [a, b] using Simpson 3 point method
    c = (a+b)/2;
    h = c-a;
    I = h / 3 * (f(a) + 4*f(c) + f(b));
end