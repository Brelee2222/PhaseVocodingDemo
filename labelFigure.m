%% No extensive documentation is planned for the code
function labelFigure(n, figureTitle, figureXLabel, figureYLabel)
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