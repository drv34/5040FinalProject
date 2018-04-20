num_features = 2;

% patient 1
patient_1 = zeros(818, 96 * num_features + 1);
for i = 1:218
    filename = sprintf ('../data/patient_1/ictal train/patient_1_%d.mat', i);
    patient_data = importdata(filename);
    patient_1(i, :) = extract_features(patient_data);
    patient_1(i,96 * num_features + 1) = 1;
end

for i = 219:818
    filename = sprintf ('../data/patient_1/non-ictal train/patient_1_%d.mat', i - 218);
    patient_data = importdata(filename);
    patient_1(i, :) = extract_features(patient_data);
    patient_1(i,96 * num_features + 1) = 0;
end
save('features/patient_1.mat', 'patient_1');


% patient 2
patient_2 = zeros(1091, 56 * num_features + 1);
for i = 1:191
    filename = sprintf ('../data/patient_2/ictal train/patient_2_%d.mat', i);
    patient_data = importdata(filename);
    patient_2(i, :) = extract_features(patient_data);
    patient_2(i,56 * num_features + 1) = 1;
end

for i = 192:1091
    filename = sprintf ('../data/patient_2/non-ictal train/patient_2_%d.mat', i - 191);
    patient_data = importdata(filename);
    patient_2(i, :) = extract_features(patient_data);
    patient_2(i,56 * num_features + 1) = 0;
end
save('features/patient_2.mat', 'patient_2');


% patient 3
patient_3 = zeros(1196, 16 * num_features + 1);
for i = 1:296
    filename = sprintf ('../data/patient_3/ictal train/patient_3_%d.mat', i);
    patient_data = importdata(filename);
    patient_3(i, :) = extract_features(patient_data);
    patient_3(i,16 * num_features + 1) = 1;
end

for i = 297:1196
    filename = sprintf ('../data/patient_3/non-ictal train/patient_3_%d.mat', i - 296);
    patient_data = importdata(filename);
    patient_3(i, :) = extract_features(patient_data);
    patient_3(i,16 * num_features + 1) = 0;
end
save('features/patient_3.mat', 'patient_3');


% patient 4
patient_4 = zeros(1624, 88 * num_features + 1);
for i = 1:424
    filename = sprintf ('../data/patient_4/ictal train/patient_4_%d.mat', i);
    patient_data = importdata(filename);
    patient_4(i, :) = extract_features(patient_data);
    patient_4(i,88 * num_features + 1) = 1;
end

for i = 425:1624
    filename = sprintf ('../data/patient_4/non-ictal train/patient_4_%d.mat', i - 424);
    patient_data = importdata(filename);
    patient_4(i, :) = extract_features(patient_data);
    patient_4(i,88 * num_features + 1) = 0;
end
save('features/patient_4.mat', 'patient_4');


% patient 5
patient_5 = zeros(1980, 47 * num_features + 1);
for i = 1:180
    filename = sprintf ('../data/patient_5/ictal train/patient_5_%d.mat', i);
    patient_data = importdata(filename);
    patient_5(i, :) = extract_features(patient_data);
    patient_5(i,47 * num_features + 1) = 1;
end

for i = 181:1980
    filename = sprintf ('../data/patient_5/non-ictal train/patient_5_%d.mat', i - 180);
    patient_data = importdata(filename);
    patient_5(i, :) = extract_features(patient_data);
    patient_5(i,47 * num_features + 1) = 0;
end
save('features/patient_5.mat', 'patient_5');


% patient 6
patient_6 = zeros(2413, 88 * num_features + 1);
for i = 1:313
    filename = sprintf ('../data/patient_6/ictal train/patient_6_%d.mat', i);
    patient_data = importdata(filename);
    patient_6(i, :) = extract_features(patient_data);
    patient_6(i,88 * num_features + 1) = 1;
end

for i = 314:2413
    filename = sprintf ('../data/patient_6/non-ictal train/patient_6_%d.mat', i - 313);
    patient_data = importdata(filename);
    patient_6(i, :) = extract_features(patient_data);
    patient_6(i,88 * num_features + 1) = 0;
end
save('features/patient_6.mat', 'patient_6');


% patient 7
patient_7 = zeros(2707, 96 * num_features + 1);
for i = 1:307
    filename = sprintf ('../data/patient_7/ictal train/patient_7_%d.mat', i);
    patient_data = importdata(filename);
    patient_7(i, :) = extract_features(patient_data);
    patient_7(i,96 * num_features + 1) = 1;
end

for i = 308:2707
    filename = sprintf ('../data/patient_7/non-ictal train/patient_7_%d.mat', i - 307);
    patient_data = importdata(filename);
    patient_7(i, :) = extract_features(patient_data);
    patient_7(i,96 * num_features + 1) = 0;
end
save('features/patient_7.mat', 'patient_7');
