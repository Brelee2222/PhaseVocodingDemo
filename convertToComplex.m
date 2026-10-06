function complexSpec = convertToComplex(polarSpec)
%CONVERTTOCOMPLEX Summary of this function goes here
%   Detailed explanation goes here
arguments (Input)
    polarSpec (:, 2) double
end

arguments (Output)
    complexSpec (:, 1) double
end

complexSpec = polarSpec(:, 1) .* exp(1j * polarSpec(:, 2));
end