function [z,k] = NewZero(f,pf,x0,tol)
%NEWZERO Newton's method to approximating the zero point 
%   approximating the zero point of the function f with derivative pf by 
%   Newton's method (tangents) with start-point x0. 
%Input:
%   f : function
%   pf: derivative fucntion of f
%   x0: initial point
%   tol: tolerance, default 1e-15
%Output:
%   z  :approximation of the zero point
%   k  :number of iterations
x = x0;
% max iteration is 1000
for c = 1:1000
    %xk+1 = xk −f(xk)/f′(xk)
    x_new = x - f(x)/pf(x);
    % fprintf("x=%f \n",x_new);
    % may devide by 0 or choose an ilegal x 
    % so that f(x) or pf(x) can not return a valid value , eg: x =0
    if isnan(x_new) || isinf(x_new)
        fprintf('can not continue calculation\n');
        break;
    end
    epsilon = modulus(x_new, x);
    % the modulus of the difference of two 
    % successive approximation is already less than tol
    if epsilon < tol
        z = x_new;
        k = c;
        return;
    end
    if abs(x - x0) > 109
        fprintf('too far away from initial guess\n');
        break;
    end
    x = x_new;
end
fprintf('not find root\n');
z = NaN;
k = NaN;

end
%modulus calculate modulus of the difference of two successive approximation
%  res = |x'-x|/|x|
function res=modulus(x_prime, x)
    res = abs(x_prime - x)/abs(x);
end

