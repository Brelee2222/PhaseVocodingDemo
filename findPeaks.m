% Finds peaks in the amplitude spectrum. Returns an ordered list of peaking bins.
function peakBins = findPeaks(ampSpec)

arguments (Input)
    ampSpec (:, 1) double
end

arguments (Output)
    peakBins (:, 1) double
end

spectrumSize = length(ampSpec);

% Peak Bins
peakBins = zeros(spectrumSize, 1);
numPeakBins = 0;

% Loop through each of the bins
for binIndex = 2:spectrumSize-1
    if ampSpec(binIndex) > ampSpec(binIndex+1) && ampSpec(binIndex) >= ampSpec(binIndex-1)
        numPeakBins = numPeakBins + 1;
        peakBins(numPeakBins) = binIndex; 
    end
end

% Resize peakBins
peakBins = peakBins( 1:numPeakBins );

end