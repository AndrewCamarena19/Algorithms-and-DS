classdef nodeDS < handle
    
    properties (SetAccess = private)
      Value                         %value of the current node    
      %use either nan or nodeDS.empty
      Next = nan; % nodeDS.empty;     %Pointer to the next node 
    % Prev = nodeDS.empty;
    end
   
    methods
        % Initiate the node
        function cell = nodeDS(NewNode)
            if (nargin > 0)
                cell.Value = NewNode;
            end
        end
        % Insert NewNode before Node ==> set NewNode pointer(Next) to Node 
        function insertBefore(NewNode, Node)
            NewNode.Next = Node;
        end
    end
end