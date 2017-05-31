function [time, index] = Bin( a, key )
%BIN Summary of this function goes here
%   Detailed explanation goes here
a = sort(a);
left = 1;
index = 0;
right = length(a);
found = false;
tic 
while((right - left) >= 1 && ~found)
    mid = ceil((right + left)/2);
    if(a(mid) == key) 
        index = mid;
        found = true;
    elseif(a(mid) > key)
        right = mid -1;
    elseif(a(mid) < key)
        left = mid + 1;
    end

end
time = toc;


