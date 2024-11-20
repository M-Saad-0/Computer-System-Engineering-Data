function s = downSample(Vect)
    k=0;
    for i=1: length(Vect)
        if (2*i-1)<=length(Vect)
            Vect(i) = Vect(2*i-1);
            k=k+1;
        end
    end
    Vect(1, k+1:end) = 0;
    s = Vect;
end