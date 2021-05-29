function encoded = encodeManchester(input, Tb, A)
    encoded = zeros(1, Tb*length(input));
    for i = 1:length(input)
        if input(i) == 1
            encoded(Tb*(i-1)+1:Tb*i) = [A * ones(1, ceil(Tb/2)), -A * ones(1,floor(Tb/2))];
        else
            encoded(Tb*(i-1)+1:Tb*i) = [-A * ones(1, ceil(Tb/2)), A * ones(1,floor(Tb/2))];
        end
    end
end