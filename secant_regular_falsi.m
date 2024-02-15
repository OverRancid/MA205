function [x, n] = secant_regular_falsi(f, x0, x1, E, it_max)
    % Finds root of f(x) = 0 via secant method with regular falsi
    for n = 1:it_max
        x = x1 - (f(x1)*(x1-x0))/(f(x1)-f(x0));
        
        if abs(f(x) - f(x1)) < E
            break
        end

        if f(x1)*f(x) < 0
            x0 = x1;
            x1 = x;
        else
            x1 = x;
        end
    end
end