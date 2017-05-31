function arr = bHeap(arr)
for i = ceil(length(arr)/2):-1:1
   arr = maxHeap(arr, i, length(arr));
end
end