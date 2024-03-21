function [x, n, returnValue] = newton_raphson(f, Df, x0, E, max_it)
    % Finds root of f(x) = 0 via Newton-Raphson
    % Non Zero returnValue indicates abrupt end to method
    x=x0;
    returnValue = 0;
    for n = 1:max_it
        fx0 = double(f(x0));
        Dfx0 = double(Df(x0));
        
        if Dfx0 == 0
            returnValue = 1;
            return;
        end
        
        x = x0 - fx0/Dfx0;

        if abs(x-x0)<E
            break;
        end
        x0 = x;
    end
end