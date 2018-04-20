function f = line_length(data, channel) 
    s = size(data);
    num_samples = s(1);
    ll = 0;
    for i = 2:num_samples
        diff = abs(data(i,channel) - data(i-1, channel));
        ll = ll + diff;
    end
    f = ll;
end