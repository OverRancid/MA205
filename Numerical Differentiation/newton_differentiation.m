function Df = newton_differentiation(X, Y)
    %produces a set of values Df = f'(X) from given set Y = f(X)
    n = length(Y);
    Df = zeros(1, n);
    
    if n > 1 
        Df(1) = (Y(2) - Y(1)) / (X(2) - X(1));
        Df(n) = (Y(n) - Y(n-1)) / (X(n) - X(n-1));
    end

    for i = 2: n-1
        Df(i) = (Y(i+1) - Y(i-1)) / (X(i+1) - X(i-1));
    end
end