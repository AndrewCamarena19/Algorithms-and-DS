function [t, index] = Linear( a, key )
%LINEAR Summary of this function goes here
%   Detailed explanation goes here
tic
for i = 1 : length(a)
    if(a(i) == key)
        index = i;
        break
    end
end
t = toc;
end

