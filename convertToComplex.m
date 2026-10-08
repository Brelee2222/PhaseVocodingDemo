%% No extensive documentation is planned for the code
function complexSpec = convertToComplex(polarSpec)
arguments (Input)
    polarSpec (:, 2) double
end

arguments (Output)
    complexSpec (:, 1) double
end

complexSpec = polarSpec(:, 1) .* exp(1j * polarSpec(:, 2));
end