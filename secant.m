function [x, n] = secant(f, x0, x1, E, it_max)
    % Finds root of f(x) = 0 via secant method
    for n = 1:it_max
        x = x1 - (f(x1)*(x1-x0))/(f(x1)-f(x0));
        
        if abs(x-x0) < E
            break
        end
        x0 = x1;
        x1 = x;
    end
end