% Finds peak indices contained in both ORDERED lists.
function mutualPeaks = findMutualPeaks(peaks1, peaks2)

arguments (Input)
    peaks1 (:, 1) double
    peaks2 (:, 1) double
end

arguments (Output)
    mutualPeaks (:, 1) double
end

% Mutual Peaks
mutualPeaks = zeros(min(length(peaks1), length(peaks2)), 1);
numMutualPeaks = 0;

% Zip through the two lists
while ~isempty(peaks1) && ~isempty(peaks2)
    if peaks1(1) > peaks2(1)
        peaks2(1) = [];
    elseif peaks1(1) < peaks2(1)
        peaks1(1) = [];
    else
        numMutualPeaks = numMutualPeaks + 1;
        mutualPeaks(numMutualPeaks) = peaks1(1);

        peaks1(1) = [];
        peaks2(1) = [];
    end
end

% Resize the output
mutualPeaks = mutualPeaks( 1:numMutualPeaks );

end