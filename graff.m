clc
clear
order = input('What is the order of the graph? ');
edges = input('What is the size of the graph? ');
gr = zeros(order);
while(edges > 0)
    conn = randi([1,order*order], 1,1);
    if(gr(conn) == 0)
        gr(conn) = 1;
        edges = edges - 1;
    end
end
disp('Graph: ');
disp(gr);
