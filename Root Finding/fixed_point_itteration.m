function [x, n] = fixed_point_itteration(g, x, E, max_it)
    % itterations on x to satisfy g(x) = x
    n = 1;
    while abs(g(x)-x)>=E && n <= max_it
        x = g(x);
        n = n + 1;
    end
end