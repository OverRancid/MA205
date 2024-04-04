function Y = euler_method(f, x0, y0, h, n)
    Y = zeros(1, n);
    Y(1) = y0;

    for i = 1: n-1
        Y(i+1) = Y(i) + h * f(x0, Y(i)); 
        x0 = x0 + h;
    end
end