function u = upsampling(vect) 
    u = zeros(1,2*length(vect));
    for i=1: length(vect)
        u(2*i) = vect(i);
    end
end