function [ rmse ] = eval_RMSE( X, X_c, submat_idx )
%EVAL_RMSE Summary of this function goes here
%   Detailed explanation goes here

err = 0; base = 0;
m = size(submat_idx, 1);
for i = 1:m
    row_idx =  submat_idx{i,1};
    col_idx =  submat_idx{i,2};
    err = err +  norm(X(row_idx, col_idx)-X_c(row_idx,col_idx), 'fro')^2;
    base= base + norm(X(row_idx, col_idx) ,'fro')^2;
end

rmse = sqrt(err/base);
end

