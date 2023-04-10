function A = proj3ex8matthewnoojin(m,N)
% A = proj3ex8(m,N) - Exercises 8 on Page 481 
% Generate an n-by-n integer matrix A with integer inverse.
% The entries of A are between -m and m
 
if nargin ~= 2
  help proj3ex8matthewnoojin;
  error('Wrong number of inputs!');
end

%% generate an inter matrix with entries between -m and m    
B = randi([-m,m],N,"single"); % use randi.m to generagte an N-by-N integer matrix

%% compute L
L = tril(B, -1) % Use tril.m to get the lower triangular part of B 

% generate a diagonal matix with 1 or -1 as its entries 
D = (-1).^randi([-m,m],N,N)    

L = L + D;

%% compute U
U = triu(B, 1) % Use triu.m to get the upper triangular part of B  
D = (-1).^randi([-m,m],N,N)    
U = U + D;

%%
A = L*U; 
       
end
