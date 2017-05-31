function [left, right, msum] = MCS(arr, low, mid, high)
sleft = -99;
su = 0;
mRight = 0;
mLeft = 0;
for i = mid:-1:low
    su = su + arr(i);
    if(su > sleft)
        sleft = su;
        mLeft = i;
    end
end
sright = -99;
su = 0;
for j = mid+1:high
    su = su + arr(j);
    if (su > sright)
        sright = su;
        mRight = j;
    end
end
left = mLeft;
right = mRight;
msum = sright + sleft;