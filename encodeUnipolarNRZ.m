function encoded = encodeUnipolarNRZ(input, Tb, A)
    encoded = zeros(1, Tb*length(input));
    for i = 1:length(input)
        if input(i) == 1
            encoded(Tb*(i-1)+1:Tb*i) = A * ones(1,Tb);
        else
            encoded(Tb*(i-1)+1:Tb*i) = zeros(1,Tb);
        end
    end
end