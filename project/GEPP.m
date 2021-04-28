function [XE,swapTimes] = GEPP(X)
%GEPP gauss elimination partial pivoting
%   given matrix X and vector b, conbine X|b to a new matrix 
%   then process gauss elimination with partial pivoting
%   return the eliminated matrix and swap times
% Inputes:
%   X:  N * N matrix
% Outputs:
%   N * N matrix if b is not given

sizeX = size(X);

if b == NaN
    XE = X;
else
    XE = X|b;
end

