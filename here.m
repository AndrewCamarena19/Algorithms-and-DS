clc
clear
disp('Size of array is 100000')
disp('---------------------------------')
a = randi([-5000, 5000], [1 100000]);
key = 7000;
a(end) = 7000;


[time, index] = Linear(a, key);
str3 = ['The time for a single step of Linear is: ', num2str(time/100000)];
disp(str3)
estLin = time/100000 *10^6;
str3 = ['The estimated time for n = 10^6 for Linear is: ', num2str(estLin)];
disp(str3)
disp(' ')


[time2, index] = Bin(a, key);
str3 = ['The time for a single step of Binary is: ', num2str(time2/log(100000))];
disp(str3)
estBin = time2/log(100000) * log(1000000);
str3 = ['The estimated time for n = 10^6 for Binary is: ', num2str(estBin)];
disp(str3)
disp(' ')

disp('Actual running time of searching with array size 1 million')
disp('---------------------------------------------------------')
a = randi([-5000, 5000], [1 1000000]);
key = 7000;
a(end) = 7000;
disp(' ')

[time, index] = Linear(a, key);
str3 = ['The running time of Linear Search in seconds is: ', num2str(time)];
disp(str3)
str3 = ['The error in estimation for Linear is: ', num2str(abs(time - estLin))];
disp(str3)
disp(' ')

[time2, index] = Bin(a, key);
str2 = ['The running time of Binary Search in seconds is: ' , num2str(time2)];
disp(str2);
str3 = ['The error in estimation for Binary is: ', num2str(abs(time2 - estBin))];
disp(str3)

