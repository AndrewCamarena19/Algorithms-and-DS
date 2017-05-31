tSize = input('Input size of table: ');
tNum = input('Input number of elements to hash: ');
elements = [10,11,12,21];%randperm(100, tNum);
table = cell(tSize,1);
for i = 1:tNum
    hash = mod(elements(i), tSize) + 1;
    if(isempty(table{hash}))
        table{hash} = nodeDS(elements(i));
    else
       if(isnan(table{hash}.Next) && table{hash}.Value < elements(i))
           insertBefore(table{hash}, nodeDS(elements(i)));
       end
         while(~isnan(curr.Next))
            if(~isnan(curr.Next) && curr.Value > elements(i))
               curr = curr.Next;
            end
            insertBefore(
         end
    end
end