function I = composite_trapeziodal(f, a, b, n)
    h = (b - a) / n;
    I = h/2 * (f(a) + f(b));
    x = a+h;
    while x < b
        I = I + h * f(x);
    end
end