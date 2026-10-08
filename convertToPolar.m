%% No extensive documentation is planned for the code
% Convert a spectrum from complex numbers to a pairs of polar coodinates, with the first one being amplitude, and the second being phase
function polarSpectrum = convertToPolar(complexSpec)

arguments (Input)
    complexSpec (:, 1) double
end

arguments (Output)
    polarSpectrum (:, 2) double
end

polarSpectrum = [abs(complexSpec), angle(complexSpec)];

end
