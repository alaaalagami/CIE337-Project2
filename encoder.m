function encoded = encoder(input, Tb, A, type)
    if type == "Unipolar NRZ"
        encoded = encodeUnipolarNRZ(input, Tb, A);
    elseif type == "Polar RZ"
        encoded = encodePolarRZ(input, Tb, A);
    elseif type == "Alternate Mark Inversion"
        encoded = encodeAMI(input, Tb, A);
    elseif type == "Manchester"
        encoded = encodeManchester(input, Tb, A);
    end
end