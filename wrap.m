%% No extensive documentation is planned for the code
function results = wrap(values, range)
arguments (Input)
    values (:, 1) double
    range (1, 1) double
end

arguments (Output)
    results (:, 1) double
end

results = values - range * round(values/range);

end