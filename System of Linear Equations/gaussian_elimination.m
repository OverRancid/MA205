function [x, returnValue] = gaussian_elimination(A, B)
    % solves Ax = B using Gaussian Elimination
    % ensure returnValue = 0 before reading soultion

    [row_size, column_size] = size(A);
    n = row_size;
    x = zeros(n, 1);
    returnValue = 0;
    
    if row_size ~= column_size
        returnValue = 1;    % Non square matrix error
        return;
    elseif det(A) == 0
        returnValue = 2;    % Zero determinant error
        return;
    end

    C = [A B];  % Augmented matrix

    for i = 1: n
        for j = i+1: n
            lambda = C(j, i)/C(i, i);
            C(j, :) = C(j, :) - lambda*C(i, :);
        end
    end

    for i = n: -1: 1
        sum = 0;
        for j = i+1: n
            sum = sum + C(i, j)*x(j);
        end
        x(i) = (C(i, n+1) - sum)/C(i, i);
    end
end