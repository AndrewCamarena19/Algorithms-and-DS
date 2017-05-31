function [left, right, Fsum] = MS(arr, low, high)
if (high == low)
    left = low;
    right = high;
    Fsum = arr(low);
else
    mid = floor((low + high)/2);
    [llow, lhigh,lsum] = MS(arr,low,mid);
    [rlow, rhigh, rsum] = MS(arr, mid+1, high);
    [clow, chigh, csum] = MCS(arr, low, mid, high);
    
    if(lsum >= rsum && lsum >= csum)
        left = llow;
        right = lhigh;
        Fsum = lsum;
    elseif(rsum >= lsum && rsum >= csum)
        left = rlow;
        right = rhigh;
        Fsum = rsum;
    else
        left = clow;
        right = chigh;
        Fsum = csum;
    end
end
