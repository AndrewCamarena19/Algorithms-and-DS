function sums = merge(arr,sums)
tsum = 0;
lsum = 0;
left = 1;
right = length(arr);
mid = ceil(length(arr)/2);
for i = 1:mid
    tsum = tsum + arr(i);
    sums = [sums tsum];
end
for i = mid+1:length(arr)
    lsum = lsum + arr(i);
    sums = [sums lsum];
end
sums = [sums (lsum + tsum)];