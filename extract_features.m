function f = extract_features(data, num_columns)
    s = size(data);
    beta = [12, 30];
    num_channels = s(2);
    num_features = 1;
    features = zeros(1, num_columns);

    for channel = 1:num_channels
        feature_index = (channel-1)*num_features + 1;
        features(feature_index) = line_length(data, channel);
        %features(feature_index) = var(data(:,channel));
        %features(feature_index) = bandpower(data(:,channel), s(1), beta);
    end

    f = features;

end
