function bubbleSort(Vector)
    for i=1: length(Vector)
        for j=1 : length(Vector)-i
            if (Vector(j)>Vector(j+1))
                temp = Vector(j);
                Vector(j) = Vector(j+1);
                Vector(j+1) = temp;
            end
        end
    end
    disp('Sorted Vector: ');Vector
end

                
%16