function [X_train, y_train, X_pred, y_pred] = split_dataset (X, y, percentage)
  # TO DO: împarte setul de date în 2 seturi: 
  # un set de training si un set de test,
  # ambele reprezentate printr-o matrice de features un vector de clase
  # percentage este un parametru considerat intre 0 si 1
  
  # Fiecare linie a matricii X reprezinta x^{(i)} si fiecare element de pe
  # linia coloanei y reprezinta y^{(i)}

  [m, n] = size(X);
  T = round(percentage * m);
  % T = Numarul de linii de training

  X_train = zeros(T, n);
  X_train(1:T, :) = X(1:T, :);
  % Primele T linii ale matricei X
  
  y_train = zeros(T, 1);  
  y_train(1:T) = y(1:T);
  % Primele T elemente ale vectorului y

  X_pred = zeros(m - T, n); 
  X_pred(1 : m-T, :) = X(T+1 : m, :);
  % Liniile ramase ale matricei X

  y_pred = zeros(m - T, 1); 
  y_pred(1: m-T) = y(T+1 : m);
  # Elemente ramase ale vectorului y

endfunction
