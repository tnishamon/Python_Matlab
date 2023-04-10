%% Project 3 Example 7
% Matthew Noojin
% Math 365, Section 1004 Professor Yang
% 04/22/22

determ = zeros(1, 100);

for i = 1 : 100
    A = round(20*rand(5,5) - 10*ones(5,5));
    determ(1,i) = det(A);
end

% We almost never get a singular matrix, we get close to, but not quite to
% 0 in almost every case here
disp(determ);

% For 1000 matrices
determ = zeros(1, 1000);
for i = 1 : 1000
    A = round(20*rand(5,5) - 10*ones(5,5));
    determ(1,i) = det(A);
end

% Even finding the min of 1000 matrices, we almost never get a singular
% matrix (it still happens occasionally)
minDeterminate = min(abs(determ));

if minDeterminate == 0
    disp("We got a singular matrix");
end

if minDeterminate ~= 0
    disp("We did not generate a singular matrix");
end
