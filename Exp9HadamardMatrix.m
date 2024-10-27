clc, clear
N = 4;  % Size of the Hadamard matrix
hadamardMatrix = hadamard(N);  % Generate Hadamard matrix
M = log2(N) + 1;  % Calculate M

disp('Hadamard Matrix:');
disp(hadamardMatrix);

% Generate binary indices and compute sequence indices using XOR
binHadIdx = fliplr(dec2bin(0:N-1, M) - '0');
binSeqIdx = xor(binHadIdx(:, 2:M), binHadIdx(:, 1:M-1));

% Calculate sequence index and generate Walsh matrix
SeqIdx = binSeqIdx * pow2((M-2:-1:0)');
walshMatrix = hadamardMatrix(SeqIdx + 1, :);

disp('Walsh Matrix:');
disp(walshMatrix);

