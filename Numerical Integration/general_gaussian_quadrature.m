function I = general_gaussian_quadrature (f, a, b, n)
    % finds the definite integral of f over [a, b] using n points gaussian quadrature

    g = @(x) f((b-a)*x/2 + (a+b)/2);    %shifting the integral to interval [-1, 1]
    I = 0;  %initializing answer as 0

    x = zeros(1, n); % roots of Legendre polynomial
    c = zeros(1, n); % weights

    syms P_n(y) dP_n(y)
    P_n(y) = legendreP(n, y);
    dP_n(y) = diff(P_n(y));

    for k = 1: n

        x(k) = (1 - 1/(8*n^2) + 1/(8*n^3)) * cos((4*k-1)*pi/(4*n+2));   %Approximation for root of legendre polynomial
        [x(k), ~, ~] = newton_raphson(P_n, dP_n, x(k), 1e-6, 1e4);  % Refining the approximation

        c(k) = 2 / ((1-x(k)^2) * dP_n(x(k))^2);    %Respective weight
    end

    for i = 1: n
        I = I + c(i) * g(x(i));
    end
    I = I * (b-a)/2;
end