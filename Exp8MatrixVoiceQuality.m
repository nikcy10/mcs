clc, clear
numClusters = 7;
snrdB = [0, 5, 10, 15, 20];
numSamples = 100;

% Preallocate arrays
clusterSizes = zeros(length(snrdB), numClusters);
voiceQualityScores = 10 * snrdB; % Direct computation

% Ensure quality is within the bounds of 0 to 100
voiceQualityScores = max(0, min(100, voiceQualityScores));

% Generate cluster data and calculate cluster sizes
for i = 1:length(snrdB)
    noiseLevel = 10 / max(0, snrdB(i));
    clusterSizes(i, :) = arrayfun(@(x) length(randn(numSamples, 1) + randn(numSamples, 1) * noiseLevel), 1:numClusters);
end

% Display results
disp('Cluster sizes for Different SNR levels: ');
disp(clusterSizes);
disp('Voice Quality Scores for Different SNR levels: ');
disp(voiceQualityScores);

% Plot results
figure;
subplot(2, 1, 1);
bar(clusterSizes);
xlabel('SNR (dB)');
ylabel('Cluster Size');
title('Cluster Sizes vs. SNR');
legend(arrayfun(@(x) sprintf('Cluster %d', x), 1:numClusters, 'UniformOutput', false));

subplot(2, 1, 2);
plot(snrdB, voiceQualityScores, '-o');
xlabel('SNR (dB)');
ylabel('Voice Quality Score');
title('Voice Quality vs. SNR');
grid on;

