function y0 = runge_kutta (f, h, x0, y0, xn)
    for x = x0: h: xn-h
        k1 = h * f(x, y0);
        k2 = h * f(x + h/2, y0 + k1/2);
        k3 = h * f(x + h/2, y0 + k2/2);
        k4 = h * f(x + h, y0 + k3);

        y0 = y0 + (k1 + 2*k2 + 2*k3 + k4) / 6;
    end
end