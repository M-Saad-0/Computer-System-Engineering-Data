function y = upsample(vect, s_f)
    y=zeros (1,s_f*length (vect));
    y([1:s_f:length(y)])=vect;
end
