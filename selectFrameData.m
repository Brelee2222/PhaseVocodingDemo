%% No extensive documentation is planned for the code
function selectFrameData(frameNumber, plots)
arguments (Input)
    frameNumber (1, 1) double
    plots (:, :)
end

set(plots(:), "Visible", "off");
set(plots(frameNumber, :), "Visible", "on");

end