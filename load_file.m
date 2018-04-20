
num_features = 2;

% patient 1
patient_1_ictal = zeros(218, 96 * num_features);
for i = 1:218
    filename = sprintf ('data/patient_1/ictal train/patient_1_%d.mat', i);
    patient_data = importdata(filename);
    patient_1_ictal(i, :) = extract_features(patient_data);
end

patient_1_non_ictal = zeros(600, 96 * num_features);
for i = 1:600
    filename = sprintf ('data/patient_1/non-ictal train/patient_1_%d.mat', i);
    patient_data = importdata(filename);
    patient_1_non_ictal(i, :) = extract_features(patient_data);
end
figure;
plot(patient_1_ictal(:,10))
figure;
plot(patient_1_non_ictal(:,10))


% patient 2
patient_2_ictal = zeros(191, 56 * num_features);
for i = 1:191
    filename = sprintf ('data/patient_2/ictal train/patient_2_%d.mat', i);
    patient_data = importdata(filename);
    patient_2_ictal(i, :) = extract_features(patient_data);
end

patient_2_non_ictal = zeros(900, 56 * num_features);
for i = 1:900
    filename = sprintf ('data/patient_2/non-ictal train/patient_2_%d.mat', i);
    patient_data = importdata(filename);
    patient_2_non_ictal(i, :) = extract_features(patient_data);
end


% patient 3
patient_3_ictal = zeros(296, 16 * num_features);
for i = 1:296
    filename = sprintf ('data/patient_3/ictal train/patient_3_%d.mat', i);
    patient_data = importdata(filename);
    patient_3_ictal(i, :) = extract_features(patient_data);
end

patient_3_non_ictal = zeros(900, 16 * num_features);
for i = 1:900
    filename = sprintf ('data/patient_3/non-ictal train/patient_3_%d.mat', i);
    patient_data = importdata(filename);
    patient_3_non_ictal(i, :) = extract_features(patient_data);
end


% patient 4
patient_4_ictal = zeros(424, 88 * num_features);
for i = 1:424
    filename = sprintf ('data/patient_4/ictal train/patient_4_%d.mat', i);
    patient_data = importdata(filename);
    patient_4_ictal(i, :) = extract_features(patient_data);
end

patient_4_non_ictal = zeros(1200, 88 * num_features);
for i = 1:1200
    filename = sprintf ('data/patient_4/non-ictal train/patient_4_%d.mat', i);
    patient_data = importdata(filename);
    patient_4_non_ictal(i, :) = extract_features(patient_data);
end


% patient 5
patient_5_ictal = zeros(180, 47 * num_features);
for i = 1:180
    filename = sprintf ('data/patient_5/ictal train/patient_5_%d.mat', i);
    patient_data = importdata(filename);
    patient_5_ictal(i, :) = extract_features(patient_data);
end

patient_5_non_ictal = zeros(1800, 47 * num_features);
for i = 1:1800
    filename = sprintf ('data/patient_5/non-ictal train/patient_5_%d.mat', i);
    patient_data = importdata(filename);
    patient_5_non_ictal(i, :) = extract_features(patient_data);
end


% patient 6
patient_6_ictal = zeros(313, 88 * num_features);
for i = 1:313
    filename = sprintf ('data/patient_6/ictal train/patient_6_%d.mat', i);
    patient_data = importdata(filename);
    patient_6_ictal(i, :) = extract_features(patient_data);
end

patient_6_non_ictal = zeros(2100, 88 * num_features);
for i = 1:2100
    filename = sprintf ('data/patient_6/non-ictal train/patient_6_%d.mat', i);
    patient_data = importdata(filename);
    patient_6_non_ictal(i, :) = extract_features(patient_data);
end


% patient 7
patient_7_ictal = zeros(307, 96 * num_features);
for i = 1:307
    filename = sprintf ('data/patient_7/ictal train/patient_7_%d.mat', i);
    patient_data = importdata(filename);
    patient_7_ictal(i, :) = extract_features(patient_data);
end

patient_7_non_ictal = zeros(2400, 96 * num_features);
for i = 1:2400
    filename = sprintf ('data/patient_7/non-ictal train/patient_7_%d.mat', i);
    patient_data = importdata(filename);
    patient_7_non_ictal(i, :) = extract_features(patient_data);
end
