%% No extensive documentation is planned for the code
function interpolatedSpectrum = interpolateSpectrum(polarSpectrum, N, M)

arguments (Input)
    polarSpectrum (:, 2) double
    N (1, 1) double
    M (1, 1) double
end

arguments (Output)
    interpolatedSpectrum (:, 2) double
end

polarSpectrum(:, 2) = unwrap(polarSpectrum(:, 2));

% Bin indices to interpolate from
binIndices = (1:(N-1)/(M-1):N)';

binIndicesDecimal = mod(binIndices, 1);

interpolatedSpectrum = ...
    (1 - binIndicesDecimal) .* polarSpectrum(floor(binIndices), :) ...
    + binIndicesDecimal .* polarSpectrum(ceil(binIndices), :);
end