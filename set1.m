clear
clc
list1 = randperm(1000,randi([1,50],1,1));
list2 = randperm(1000,randi([1,50],1,1));
slist1 = sort(list1);
slist2 = sort(list2);
len1 = length(slist1) + length(slist2);
l1 = 1;
l2 = 1;
sett = [];
count = 0;
while(l1 <= length(slist1) && l2 <= length(slist2))
    if(slist1(l1) > slist2(l2))
        l2 = l2 + 1;
    elseif(slist1(l1) < slist2(l2))
        l1 = l1 + 1;
    elseif(slist1(l1) == slist2(l2))
        sett = [sett slist1(l1)];
        l1 = l1 + 1;
        l2 = l2 + 1;
    end
    count = count + 1;
end
sett