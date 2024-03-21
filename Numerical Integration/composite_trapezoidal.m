function I = composite_trapezoidal(f, a, b, n)
    % finds the definite integral of f over [a, b] using n+1 points composite trapezoidal formula
    h = (b - a) / n;
    I = 0;

    if (isnan(f(a)))
        I = I + h/2 * f(a+1e-4);
    else
        I = I + h/2 * f(a);
    end
    
    if (isnan(f(b)))
        I = I + h/2 * f(b-1e-4);
    else
        I = I + h/2 * f(b);
    end
    
    x = a+h;
    while x < b
        I = I + h * f(x);
        x = x + h;
    end
end