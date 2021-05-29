function encoded = encodePolarRZ(input, Tb, A)
    encoded = zeros(1, Tb*length(input));
    for i = 1:length(input)
        if input(i) == 1
            encoded(Tb*(i-1)+1:Tb*i) = [A * ones(1, ceil(Tb/4)), zeros(1,floor(3*Tb/4))];
        else
            encoded(Tb*(i-1)+1:Tb*i) = [-A * ones(1, ceil(Tb/4)), zeros(1,floor(3*Tb/4))];
        end
    end
end