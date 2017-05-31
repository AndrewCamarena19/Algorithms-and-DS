function [arr] = insertion(arr)
for i = 1:length(arr)
    j = i;
    while (j > 1 && arr(j-1) > arr(j))
        arr([j j-1]) = arr([j-1 j]);
        j = j -1;
    end
end
end