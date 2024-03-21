function I = simpson(f, a, b)
    c = (a+b)/2;
    h = c-a;
    I = h / 3 * (f(a) + 4*f(c) + f(b));
end