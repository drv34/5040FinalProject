num_features = 1;

% % patient 1
% num_columns = 96 * num_features + 1;
% patient_1 = zeros(818, num_columns);
% for i = 1:218
%     filename = sprintf ('../data/patient_1/ictal train/patient_1_%d.mat', i);
%     patient_data = importdata(filename);
%     patient_1(i, :) = extract_features(patient_data, num_columns);
%     patient_1(i,num_columns) = 1;
% end
% 
% for i = 219:818
%     filename = sprintf ('../data/patient_1/non-ictal train/patient_1_%d.mat', i - 218);
%     patient_data = importdata(filename);
%     patient_1(i, :) = extract_features(patient_data, num_columns);
%     patient_1(i,num_columns) = 0;
% end
% save('features/patient_1.mat', 'patient_1');

% % patient 1 test
% num_columns = num_columns - 1;
% patient_1_test = zeros(931, num_columns);
% for i = 1:931
%     filename = sprintf ('../data/patient_1/test/patient_1_test_%d.mat', i);
%     patient_data = importdata(filename);
%     patient_1_test(i, :) = extract_features(patient_data, num_columns);
% end
% save('features/patient_1_test.mat', 'patient_1_test');

% % patient 2
% num_columns = 56 * num_features + 1;
% patient_2 = zeros(1091, num_columns);
% for i = 1:191
%     filename = sprintf ('../data/patient_2/ictal train/patient_2_%d.mat', i);
%     patient_data = importdata(filename);
%     patient_2(i, :) = extract_features(patient_data, num_columns);
%     patient_2(i,num_columns) = 1;
% end
% 
% for i = 192:1091
%     filename = sprintf ('../data/patient_2/non-ictal train/patient_2_%d.mat', i - 191);
%     patient_data = importdata(filename);
%     patient_2(i, :) = extract_features(patient_data, num_columns);
%     patient_2(i,num_columns) = 0;
% end
% save('features/patient_2.mat', 'patient_2');


% % patient 2 test
% num_columns = num_columns - 1;
% patient_2_test = zeros(1242, num_columns);
% for i = 1:1242
%     filename = sprintf ('../data/patient_2/test/patient_2_test_%d.mat', i);
%     patient_data = importdata(filename);
%     patient_2_test(i, :) = extract_features(patient_data, num_columns);
% end
% save('features/patient_2_test.mat', 'patient_2_test');


% patient 3
num_columns = 16 * num_features + 1;
patient_3 = zeros(1196, num_columns);
for i = 1:296
    filename = sprintf ('../data/patient_3/ictal train/patient_3_%d.mat', i);
    patient_data = importdata(filename);
    patient_3(i, :) = extract_features(patient_data, num_columns);
    patient_3(i,num_columns) = 1;
end

for i = 297:1196
    filename = sprintf ('../data/patient_3/non-ictal train/patient_3_%d.mat', i - 296);
    patient_data = importdata(filename);
    patient_3(i, :) = extract_features(patient_data, num_columns);
    patient_3(i,num_columns) = 0;
end
save('features/patient_3.mat', 'patient_3');

% patient 3 test
num_columns = num_columns - 1;
patient_3_test = zeros(2400, num_columns);
for i = 1:2400
    filename = sprintf ('../data/patient_3/test/patient_3_test_%d.mat', i);
    patient_data = importdata(filename);
    patient_3_test(i, :) = extract_features(patient_data, num_columns);
end
save('features/patient_3_test.mat', 'patient_3_test');


% % patient 4
% num_columns = 88 * num_features + 1;
% patient_4 = zeros(1624, num_columns);
% for i = 1:424
%     filename = sprintf ('../data/patient_4/ictal train/patient_4_%d.mat', i);
%     patient_data = importdata(filename);
%     patient_4(i, :) = extract_features(patient_data, num_columns);
%     patient_4(i,num_columns) = 1;
% end
% 
% for i = 425:1624
%     filename = sprintf ('../data/patient_4/non-ictal train/patient_4_%d.mat', i - 424);
%     patient_data = importdata(filename);
%     patient_4(i, :) = extract_features(patient_data, num_columns);
%     patient_4(i,num_columns) = 0;
% end
% save('features/patient_4.mat', 'patient_4');

% % patient 4 test
% num_columns = num_columns - 1;
% patient_4_test = zeros(2184, num_columns);
% for i = 1:2184
%     filename = sprintf ('../data/patient_4/test/patient_4_test_%d.mat', i);
%     patient_data = importdata(filename);
%     patient_4_test(i, :) = extract_features(patient_data, num_columns);
% end
% save('features/patient_4_test.mat', 'patient_4_test');


% % patient 5
% num_columns = 47 * num_features + 1;
% patient_5 = zeros(1980, num_columns);
% for i = 1:180
%     filename = sprintf ('../data/patient_5/ictal train/patient_5_%d.mat', i);
%     patient_data = importdata(filename);
%     patient_5(i, :) = extract_features(patient_data, num_columns);
%     patient_5(i,num_columns) = 1;
% end
% 
% for i = 181:1980
%     filename = sprintf ('../data/patient_5/non-ictal train/patient_5_%d.mat', i - 180);
%     patient_data = importdata(filename);
%     patient_5(i, :) = extract_features(patient_data, num_columns);
%     patient_5(i,num_columns) = 0;
% end
% save('features/patient_5.mat', 'patient_5');

% % patient 5 test
% num_columns = num_columns - 1;
% patient_5_test = zeros(3057, num_columns);
% for i = 1:3057
%     filename = sprintf ('../data/patient_5/test/patient_5_test_%d.mat', i);
%     patient_data = importdata(filename);
%     patient_5_test(i, :) = extract_features(patient_data, num_columns);
% end
% save('features/patient_5_test.mat', 'patient_5_test');


% % patient 6
% num_columns = 88 * num_features + 1;
% patient_6 = zeros(2413, num_columns);
% for i = 1:313
%     filename = sprintf ('../data/patient_6/ictal train/patient_6_%d.mat', i);
%     patient_data = importdata(filename);
%     patient_6(i, :) = extract_features(patient_data, num_columns);
%     patient_6(i,num_columns) = 1;
% end
% 
% for i = 314:2413
%     filename = sprintf ('../data/patient_6/non-ictal train/patient_6_%d.mat', i - 313);
%     patient_data = importdata(filename);
%     patient_6(i, :) = extract_features(patient_data, num_columns);
%     patient_6(i,num_columns) = 0;
% end
% save('features/patient_6.mat', 'patient_6');

% % patient 6 test
% num_columns = num_columns - 1;
% patient_6_test = zeros(4116, num_columns);
% for i = 1:4116
%     filename = sprintf ('../data/patient_6/test/patient_6_test_%d.mat', i);
%     patient_data = importdata(filename);
%     patient_6_test(i, :) = extract_features(patient_data, num_columns);
% end
% save('features/patient_6_test.mat', 'patient_6_test');


% % patient 7
% num_columns = 96 * num_features + 1;
% patient_7 = zeros(2707, num_columns);
% for i = 1:307
%     filename = sprintf ('../data/patient_7/ictal train/patient_7_%d.mat', i);
%     patient_data = importdata(filename);
%     patient_7(i, :) = extract_features(patient_data, num_columns);
%     patient_7(i,num_columns) = 1;
% end
% 
% for i = 308:2707
%     filename = sprintf ('../data/patient_7/non-ictal train/patient_7_%d.mat', i - 307);
%     patient_data = importdata(filename);
%     patient_7(i, :) = extract_features(patient_data, num_columns);
%     patient_7(i,num_columns) = 0;
% end
% save('features/patient_7.mat', 'patient_7');

% % patient 7 test
% num_columns = num_columns - 1;
% patient_7_test = zeros(4523, num_columns);
% for i = 1:4523
%     filename = sprintf ('../data/patient_7/test/patient_7_test_%d.mat', i);
%     patient_data = importdata(filename);
%     patient_7_test(i, :) = extract_features(patient_data, num_columns);
% end
% save('features/patient_7_test.mat', 'patient_7_test');
