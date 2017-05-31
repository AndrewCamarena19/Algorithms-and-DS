for i = 1:30
b = randi([-7000,7000],1,10000);
tic;  
a = hSort(b);
hTimes(i) = toc;
end
str = ['The average running time for Heapsort in seconds is :'...
      num2str(sum(hTimes)/length(hTimes))];
disp(str);

for i = 1:30
b = randi([-7000,7000],1,10000);
tic;  
a = quick(b, 1, length(b));
qTimes(i) = toc;
end
str = ['The average running time for Quicksort in seconds is :'...
      num2str(sum(qTimes)/length(qTimes))];
disp(str);

for i = 1:30
b = randi([-7000,7000],1,10000);
tic;  
a = selection(b);
STimes(i) = toc;
end
str = ['The average running time for Selection sort in seconds is :'...
      num2str(sum(STimes)/length(STimes))];
disp(str);