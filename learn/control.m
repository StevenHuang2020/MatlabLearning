nSamples = 5;
npoints = 50;

for k = 1:nSamples
    currentData = rand(npoints,1);
    sampleMean(k) = mean(currentData);
    disp(['Iter #', int2str(k), ' ', num2str(sampleMean(k))])
end

overMean = mean(sampleMean)
if overMean < 0.49
    disp('Mean is less than expected')
elseif overMean > 0.51
    disp('Mean is greater than expected')
else
    disp('Mean is within expected')
end
