function encoded = encodeAMI(input, Tb, A)
    encoded = zeros(1, Tb*length(input));
    onesCount = 0;
    for i = 1:length(input)
        if input(i) == 1
            encoded(Tb*(i-1)+1:Tb*i) = (-1)^onesCount * [A * ones(1, ceil(Tb/4)), zeros(1,floor(3*Tb/4))];
            onesCount = onesCount + 1;
        else
            encoded(Tb*(i-1)+1:Tb*i) = zeros(1,Tb);
        end
    end
end