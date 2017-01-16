function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

z = X * theta;
htheta = sigmoid(z);

cost = sum(-y' * log(htheta) - ( (1-y)' * log(1 - htheta)));

temptheta = theta;
temptheta(1) = 0;

reg = lambda / (2*m) * sum( temptheta.^2);

J = (1 / m * cost) +  reg;

% grad1 = 1 / m * (X'(1) * (htheta(1)-y(1)));
% grad2 = 1 / m * (X'(2:m)' * (htheta(2:m)-y(2:m)))  +  (lambda / m) * theta(2:m);
% grad = [grad1;grad2];


grad = 1 / m * (X' * (htheta-y))  +  ((lambda / m) * temptheta );





% =============================================================

end
