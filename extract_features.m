function f = extract_features(data)
    s = size(data);
    num_channels = s(2);
    num_features = 2;
    features = zeros(1, num_channels*num_features);
    
    for channel = 1:num_channels
        feature_index = (channel-1)*num_features + 1;
        features(feature_index) = line_length(data, channel);
        features(feature_index + 1) = var(data(:,channel));
    end
    
    f = features;

end