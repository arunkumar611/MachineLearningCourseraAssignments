function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
%LINEARREGCOSTFUNCTION Compute cost and gradient for regularized linear 
%regression with multiple variables
%   [J, grad] = LINEARREGCOSTFUNCTION(X, y, theta, lambda) computes the 
%   cost of using theta as the parameter for linear regression to fit the 
%   data points in X and y. Returns the cost in J and the gradient in grad

% Initialize some useful values
m = length(y); % number of training examples
% You need to return the following variables correctly 

%X = [ones(m, 1) X];

J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost and gradient of regularized linear 
%               regression for a particular choice of theta.
%
%               You should set J to the cost and grad to the gradient.
%
htheta = X * theta;
temptheta = [0;theta(2:end,:)];
J = 1 / (2*m) * sum((htheta - y).^2) + lambda / (2*m) * sum(temptheta.^2);

%grad0 = 1 / m * sum(X(:,1) .* (htheta-y));
grad = (1 / m * sum(X .* (htheta-y))') + ((lambda / m) .* temptheta);









% =========================================================================

grad = grad(:);

end
