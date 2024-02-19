function [x, n] = bisection(f, a, b, tolerance, max_itt)
    % Finds root of f(x) = 0 via bisection method
    for n = 1:max_itt
        x = (a+b)/2;
        if abs(f(x)) < tolerance
            break;
        end

        if f(a)*f(x) < 0
            b = x;
        else
            a = x;
        end
    end
end
