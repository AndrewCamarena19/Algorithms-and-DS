alength = input('Select a size for the array: ')
arr = randi([-7000,7000],1,alength);
[l, r, s] = MS(arr,1, length(arr));
str = ['The maximum subarray sequence begins at ', num2str(l)...
       ' and ends at ', num2str(r), ' with a value of: ', num2str(s)];
disp(str);