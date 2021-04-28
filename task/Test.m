f = @(x) 1/x + x^2 -2*x -3;
fp = @(x) -x^-2 + 2*x - 2;
% the following 3 test result should all convergence to the same root
% 2.9122 which is the greatest
[z,k] = NewZero(f,fp,2,1e-15);
[z,k]
[z,k] = NewZero(f,fp,4,1e-15);
[z,k]
[z,k] = NewZero(f,fp,100,1e-15);
[z,k]

