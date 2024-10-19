function [P] = get_lower_inverse (L)
	# TO DO: Determinati printr-o metoda matriceala neiterativa inversa
	# unei matrici de tipul lower

	[n, ~] = size(L);
	P = zeros(n, n);

	# Am aplicat formulele deduse prin identificare directa

	# Pentru fiecare coloana k:
	for k = 1:n
		# Calculez elementul de pe diagonala
		P(k, k) = 1 / L(k, k);
		# Calculez elementele de sub diagonala
		for i = k+1 : n
			P(i, k) = - L(i, k:i) * P(k:i, k) / L(i, i); 
		endfor
		# Inversa unei matrici lower este tot lower, asa ca este
		#	suficient sa calculez doar aceste valori
	endfor 

endfunction