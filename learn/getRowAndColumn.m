function [row, col] = getRowAndColumn(N)
    row=0;
    col=0;
    if N <= 0
        return
    end
    
    if N == 1
        row=1;
        col=1;
        return
    end
    
    if rem(N,2) ~= 0
        N=N+1;
    end
    
    match=[]
    for i = [1:int8(N/2)]
        %disp(['i= ', num2str(i),' ',num2str(rem(N,i))])
        if rem(N,i) == 0
            %disp(['i= ', num2str(i),' ',num2str(int8(N/i))])
            match = [match; [int8(i) int8(N/i)]];
        end
    end
    
    %%%(a,b) find the minimum abs(a-b) as the suitable result%%%
    row=match(1,1);
    col=match(1,2);
    minInter = abs(row-col)
    for i=[1:size(match)]
        %disp(['match i= ', num2str(i),' ',num2str(match(i,1)),' ',num2str(match(i,2))])
        if minInter > abs(match(i,1)-match(i,2))
            minInter = abs(match(i,1)-match(i,2))
             row=match(i,1);
             col=match(i,2);
        end
    end
end