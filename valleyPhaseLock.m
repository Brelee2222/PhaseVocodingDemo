function range = valleyPhaseLock(peakBin, ampSpec)
%VALLEYPHASELOCK Summary of this function goes here
%   Detailed explanation goes here
arguments (Input)
    peakBin (1, 1) double
    ampSpec (:, 1) double
end

arguments (Output)
    range (2, 1) double
end

spectrumSize = length(ampSpec);

lower = peakBin;
while lower > 1 && ampSpec(lower) > ampSpec(lower-1)
    lower = lower - 1;
end

upper = peakBin;
while upper < spectrumSize && ampSpec(upper) > ampSpec(upper+1)
    upper = upper + 1;
end

range = [lower;upper];
end