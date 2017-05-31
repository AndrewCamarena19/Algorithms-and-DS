function arr = selection(arr)
for i = 1:length(arr)
    min = i;
    for j = i+1:length(arr)
        if(arr(j) < arr(min))
            min = j;
        end
    end
    if(min ~= i)
        arr([i min]) = arr([min i]);
    end
end