function main ()
    f = @(x) exp(-(x^2));

    I = composite_trapeziodal(f, 0, 1, 1000);
    disp(I);
    
    I = simpson(f, 0, 1);
    disp(I);
    
    I = composite_simpson(f, 0, 1, 10);
    disp(I);
end