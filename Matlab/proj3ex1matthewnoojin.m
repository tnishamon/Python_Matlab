%% Project 3, Example 1 
% Matthew Noojin
% Math 365, Section 1004 Professor Yang
% 04/22/22

A = round(20*rand(5, 5) - 10*ones(5,5));

% Our top row of the matrix
a11 = A([1], [1]);
a12 = -1 * A([1], [2]);
a13 = A([1], [3]);
a14 = -1 * A([1], [4]);
a15 = A([1], [5]);

% Their cofactors
M11 = A([2, 3, 4, 5], [2, 3, 4, 5]);
M12 = A([2, 3, 4, 5], [1, 3, 4, 5]);
M13 = A([2, 3, 4, 5], [1, 2, 4, 5]);
M14 = A([2, 3, 4, 5], [1, 2, 3, 5]);
M15 = A([2, 3, 4, 5,],[1, 2, 3, 4]);

% Determinate using definition 3
determinantA = a11*det(M11) + a12*det(M12) ...
    + a13*det(M13) + a14*det(M14) + a15*det(M15);

disp("Our calculated determinate with definition 3: " + determinantA);

disp(newline + "Matlab's det(A): " + det(A));

