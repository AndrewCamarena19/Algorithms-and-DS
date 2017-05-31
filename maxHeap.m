function arr = maxHeap(arr, index, size)
left = 2*index;
right = 2*index + 1;
largest = index;
if(left <= size && arr(left) > arr(largest))
    largest = left;
end
if (right <= size && arr(right) > arr(largest))
    largest = right;
end
if (largest ~= index)
    arr([largest index]) = arr([index largest]);
    arr = maxHeap(arr, largest, size);
end
end