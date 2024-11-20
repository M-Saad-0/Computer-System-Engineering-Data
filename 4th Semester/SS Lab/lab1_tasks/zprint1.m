function zprint1(z1, z2)
    sumr = (real(z1) + real(z2));
    sumi = (imag(z1) + imag(z2));
    fprintf('%i + %ii', sumr,sumi);
    disp(' ');
end
