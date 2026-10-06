function results = wrap(values, range)
%WRAP Summary of this function goes here
%   Detailed explanation goes here
arguments (Input)
    values (:, 1) double
    range (1, 1) double
end

arguments (Output)
    results (:, 1) double
end

results = values - range * round(values/range);

end