function narr = hSort(arr)
arr = bHeap(arr);
%input a empty array in input for narr
hstop = length(arr);
count = 0;
for i = hstop:-1:2
    count = count + 1;
    narr(count) = arr(1);
    arr([1 end]) = arr([end 1]);
    arr(end) = [];
    arr = maxHeap(arr, 1, i-1);
end