function labelFigure(n, figureTitle, figureXLabel, figureYLabel)
%LABELGRAPH Summary of this function goes here
%   Detailed explanation goes here
arguments (Input)
    n (1, 1) double
    figureTitle (1, 1) string
    figureXLabel (1, 1) string
    figureYLabel (1, 1) string
end

figure(n);

hold off;

title(figureTitle);
xlabel(figureXLabel);
ylabel(figureYLabel);

end