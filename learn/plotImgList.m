function plotImgList(N,imgList,nameList)
    nImg = N%length(imgList)
    %disp(['nImg= ', num2str(nImg),' ',nameList])
    [nRow,nCol] = getRowAndColumn(nImg)
    disp(['nImg= ', num2str(nImg),' row=',num2str(nRow),' col=',num2str(nCol)])
%     subplot(nRow,nCol,1); 
%     imshow(imgList); 
%     title(nameList);
        
    for i=1:nImg
        disp(['ii= ', num2str(i)]);
        %subplot(nRow,nCol,i); 
        subplot(1,2,i); 
        %imshow(imgList(i)); 
        imshow(imgList((i-1)*512+1:512, :)); 
        %title(nameList(i));
    end
end