function Y = modified_euler(f, x0, y0, h, n)
    Y = euler_method(f, x0, y0, h, n);

    for i = 1: n-1
        Y(i+1) = Y(i) + h / 2 * (f(x0, Y(i)) + f(x0+h, Y(i+1)));
        x0 = x0+h; 
    end
end