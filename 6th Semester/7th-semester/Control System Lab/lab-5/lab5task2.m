syms s j1 j2;

F = (j1 - 2)*3/(20*(s - j2 + 1)) - 3*(j1 + 2)/(20*(j2 + s + 1)) + 3/(5*s);

pretty(F); % Display the symbolic expression nicely

% Extract coefficients and exponents manually
[numerator, denominator] = numden(F);

numerator_coeffs = coeffs(numerator, s);
denominator_coeffs = coeffs(denominator, s);

numerator_exponents = 0:length(numerator_coeffs)-1;
denominator_exponents = 0:length(denominator_coeffs)-1;

disp('Numerator Coefficients:');
disp(numerator_coeffs);
disp('Numerator Exponents:');
disp(numerator_exponents);

disp('Denominator Coefficients:');
disp(denominator_coeffs);
disp('Denominator Exponents:');
disp(denominator_exponents);
