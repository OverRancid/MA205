function [x, n] = bisection(f, a, b, tolerance, max_itt)
    % Finds root of f(x) = 0 via bisection method
    for n = 1:max_itt
        c = (a+b)/2;
        if abs(f(c)) < tolerance
            break;
        end

        if f(a)*f(c) < 0
            b = c;
        else
            a = c;
        end
    end
    x = c;
end