function selectFrameData(frameNumber, plots)
%SELECTFRAMEDATA Summary of this function goes here
%   Detailed explanation goes here
arguments (Input)
    frameNumber (1, 1) double
    plots (:, :)
end

set(plots(:), "Visible", "off");
set(plots(frameNumber, :), "Visible", "on");

end