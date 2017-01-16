function [C, sigma] = dataset3Params(X, y, Xval, yval)
%EX6PARAMS returns your choice of C and sigma for Part 3 of the exercise
%where you select the optimal (C, sigma) learning parameters to use for SVM
%with RBF kernel
%   [C, sigma] = EX6PARAMS(X, y, Xval, yval) returns your choice of C and 
%   sigma. You should complete this function to return the optimal C and 
%   sigma based on a cross-validation set.
%

% You need to return the following variables correctly.
C = 1.000000;
sigma = 0.100000;

% ====================== YOUR CODE HERE ======================
% Instructions: Fill in this function to return the optimal C and sigma
%               learning parameters found using the cross validation set.
%               You can use svmPredict to predict the labels on the cross
%               validation set. For example, 
%                   predictions = svmPredict(model, Xval);
%               will return the predictions on the cross validation set.
%
%  Note: You can compute the prediction error using 
%        mean(double(predictions ~= yval))
%


%C_possible_values = [0.01;0.03;0.1;0.3;1;3;10;30];
%Sigma_possible_values = [0.01;0.03;0.1;0.3;1;3;10;30];

%error = 10^10;

%for i=1:8
%    for j=1:8
%         iter = (i-1)*8 + j;
%         fprintf("Optimizing C & Sigma. Running iteration #%d of 64 \n",iter);
%         C_temp = C_possible_values(i,1);
%         sigma_temp = Sigma_possible_values(j,1); 
%         model= svmTrain(X, y, C_temp, @(x1, x2) gaussianKernel(x1, x2, sigma_temp));
%         predictions=svmPredict(model,Xval);
%         temperror=mean(double(predictions ~= yval))
%         if(temperror<error)
%             error=temperror;
%             C = C_temp;
%             sigma = sigma_temp;
%         endif
%     end
% end    

fprintf("Finalized C = %f \n Sigma = %f",C,sigma);


% =========================================================================

end
