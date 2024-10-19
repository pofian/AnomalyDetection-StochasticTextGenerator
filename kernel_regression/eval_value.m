function pred = eval_value(x, X, f, f_param, a)
   # TO DO: pentru un vector de input x, preziceti valoarea acestuia in
   # in functie de toti vectorii de input folositi pentru a antrena modelul
   # folosind functia de kernel f care are ca al 3-lea parametru f_param
   # si vectorul coloana a

   n = length(a);
   K = zeros(1, n);

   for i = 1:n
      # Pentru a obtine K(i), aplic functia data pentru linia i a
      #     matricei X, asa cum indica formula din enuntul temei
      K(i) = f(X(i, :), x, f_param);
   endfor

   pred = K * a;

endfunction