function [x, returnValue] = LU_factorisation(A, B)
    % solves Ax = B using LU Decomposition Method a.k.a Factorisation
    % ensure returnValue = 0 before reading soultion
    returnValue = 0;
    [row_size, column_size] = size(A);
    n = row_size;
    x = zeros(n, 1);

    if row_size ~= column_size
        returnValue = 1;    % Non square matrix error
        return;
    elseif det(A) == 0
        returnValue = 2;    % Zero determinant error
        return;
    end

    L = eye(n);
    U = A;

    for i = 1: n-1
        if U(i, i) == 0
            returnValue = 3;
            return;
        end
        for j = i+1: n
            lambda = U(j, i)/U(i, i);
            U(j, :) = U(j, :) - lambda * U(i, :);
            L(j, i) = lambda;
        end
    end

    % forward substitution
    y = zeros(n, 1);
    for i = 1: n
        sum = 0;
        for j = 1: i-1
            sum = sum + L(i, j)*y(j);
        end
        y(i) = (B(i) - sum)/L(i, i);
    end

    % backward substitution
    for i = n: -1: 1
        sum = 0;
        for j = n: -1: i+1
            sum = sum + U(i, j) * x(j);            
        end
        x(i) = (y(i) - sum)/U(i, i);
    end
end