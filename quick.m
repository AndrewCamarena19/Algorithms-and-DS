function [arr] = quick(arr, left, right)
i = left;
j = right;
pivot = arr(floor((left + right) / 2));


while (i <= j)
    while (arr(i) < pivot)
        i = i + 1;
    end
    while (arr(j) > pivot)
        j = j -1;
    end
    if (i <= j)
        arr([i j]) = arr([j i]);
        i = i + 1;
        j = j - 1;
    end
end

if (left < j)
   arr = quick(arr, left, j);
end
if (i < right)
   arr = quick(arr, i, right);
end
end

